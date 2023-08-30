#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_task.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_stream_control_in "../tv/cdatafile/c.RBM.autotvin_stream_control_in.dat"
#define WRAPC_STREAM_SIZE_IN_stream_control_in "../tv/stream_size/stream_size_in_stream_control_in.dat"
#define WRAPC_STREAM_INGRESS_STATUS_stream_control_in "../tv/stream_size/stream_ingress_status_stream_control_in.dat"
#define AUTOTB_TVIN_stream_sigmoid_switch "../tv/cdatafile/c.RBM.autotvin_stream_sigmoid_switch.dat"
#define WRAPC_STREAM_SIZE_IN_stream_sigmoid_switch "../tv/stream_size/stream_size_in_stream_sigmoid_switch.dat"
#define WRAPC_STREAM_INGRESS_STATUS_stream_sigmoid_switch "../tv/stream_size/stream_ingress_status_stream_sigmoid_switch.dat"
#define AUTOTB_TVIN_vector_in_len "../tv/cdatafile/c.RBM.autotvin_vector_in_len.dat"
#define WRAPC_STREAM_SIZE_IN_vector_in_len "../tv/stream_size/stream_size_in_vector_in_len.dat"
#define WRAPC_STREAM_INGRESS_STATUS_vector_in_len "../tv/stream_size/stream_ingress_status_vector_in_len.dat"
#define AUTOTB_TVIN_vector_out_len "../tv/cdatafile/c.RBM.autotvin_vector_out_len.dat"
#define WRAPC_STREAM_SIZE_IN_vector_out_len "../tv/stream_size/stream_size_in_vector_out_len.dat"
#define WRAPC_STREAM_INGRESS_STATUS_vector_out_len "../tv/stream_size/stream_ingress_status_vector_out_len.dat"
#define AUTOTB_TVIN_stream_vector_in "../tv/cdatafile/c.RBM.autotvin_stream_vector_in.dat"
#define WRAPC_STREAM_SIZE_IN_stream_vector_in "../tv/stream_size/stream_size_in_stream_vector_in.dat"
#define WRAPC_STREAM_INGRESS_STATUS_stream_vector_in "../tv/stream_size/stream_ingress_status_stream_vector_in.dat"
#define AUTOTB_TVIN_stream_weight_in "../tv/cdatafile/c.RBM.autotvin_stream_weight_in.dat"
#define WRAPC_STREAM_SIZE_IN_stream_weight_in "../tv/stream_size/stream_size_in_stream_weight_in.dat"
#define WRAPC_STREAM_INGRESS_STATUS_stream_weight_in "../tv/stream_size/stream_ingress_status_stream_weight_in.dat"
#define AUTOTB_TVIN_stream_bias_in "../tv/cdatafile/c.RBM.autotvin_stream_bias_in.dat"
#define WRAPC_STREAM_SIZE_IN_stream_bias_in "../tv/stream_size/stream_size_in_stream_bias_in.dat"
#define WRAPC_STREAM_INGRESS_STATUS_stream_bias_in "../tv/stream_size/stream_ingress_status_stream_bias_in.dat"
#define AUTOTB_TVOUT_stream_vector_out "../tv/cdatafile/c.RBM.autotvout_stream_vector_out.dat"
#define WRAPC_STREAM_SIZE_OUT_stream_vector_out "../tv/stream_size/stream_size_out_stream_vector_out.dat"
#define WRAPC_STREAM_EGRESS_STATUS_stream_vector_out "../tv/stream_size/stream_egress_status_stream_vector_out.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_stream_vector_out "../tv/rtldatafile/rtl.RBM.autotvout_stream_vector_out.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  template<size_t n>
  void move(hls::stream<Byte<n>>& to, hls::stream<Byte<n>>& from)
  {
    to.write(from.read());
  }

  template<size_t n>
  void task_move(void* to, void* from)
  {
    hls::task task(
      move<n>, *(hls::stream<Byte<n>>*)to, *(hls::stream<Byte<n>>*)from
    );
  }
}

namespace hls::sim
{
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}

namespace hls::sim
{
  class KpnWriter : public Writer {
  public:
    KpnWriter(const char *path) : Writer(path)
    {
      begin(0);
    }

    virtual ~KpnWriter()
    {
      end();
    }
  };

  template<typename E>
  struct KpnStream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    KpnWriter* writer;
    KpnWriter* swriter;
    KpnWriter* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t depth;
    bool hasWrite;

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~KpnStream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      swriter->next(std::to_string(depth).c_str());
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  template<typename E>
  void check(KpnStream<E> &port)
  {
    port.reader->begin();
    bool foundX = false;
    E *p = new E;
    while (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)p);
      port.param->write(*p);
    }
    delete p;
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }
#else
  template<typename E>
  void for_Kpn_istream(Stream<E> &port, RefTCL& tcl)
  {
    port.buffer();
    port.writer->begin(tcl.AESL_transaction);
    port.depth = port.param->size();
    port.doTCL(tcl);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)&port.buf[j], port.width)
      };
      port.writer->next(s.c_str());
    }
    port.writer->end();

    port.swriter->begin(tcl.AESL_transaction);
    port.swriter->next(std::to_string(port.depth).c_str());
    port.swriter->end();

    port.gwriter->begin(tcl.AESL_transaction);
    size_t n = port.depth;
    size_t d = port.depth;
    do {
      port.gwriter->next(std::to_string(n--).c_str());
    } while (d--);
    port.gwriter->end();
  }

  template<typename E>
  void for_Kpn_ostream(KpnStream<E>& port, RefTCL& tcl, hls::stream<E>& out)
  {
    E data = out.read();
    ++port.depth;
    port.doTCL(tcl);
    std::string &&s {
      formatData((unsigned char*)&data, port.width)
    };
    port.writer->next(s.c_str());
    port.param->write(data);
  }

  template<typename E>
  void task_for_Kpn_ostream(KpnStream<E>& port, RefTCL& tcl, hls::stream<E>& out)
  {
    port.depth = 0;
    hls::task task(for_Kpn_ostream<E>, port, tcl, out);
  }
#endif
}

namespace hls::sim
{
  void task_move_1(void* to, void* from)
  {
    task_move<1>(to, from);
  }
  void task_move_2(void* to, void* from)
  {
    task_move<2>(to, from);
  }
  void task_move_4(void* to, void* from)
  {
    task_move<4>(to, from);
  }
  void task_move_8(void* to, void* from)
  {
    task_move<8>(to, from);
  }
  void task_move_16(void* to, void* from)
  {
    task_move<16>(to, from);
  }
}


extern "C"
void RBM_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_RBM_hw(void* __xlx_apatb_param_stream_control_in, void* __xlx_apatb_param_stream_sigmoid_switch, void* __xlx_apatb_param_vector_in_len, void* __xlx_apatb_param_vector_out_len, void* __xlx_apatb_param_stream_vector_in, void* __xlx_apatb_param_stream_weight_in, void* __xlx_apatb_param_stream_bias_in, void* __xlx_apatb_param_stream_vector_out)
{
  static hls::sim::Stream<hls::sim::Byte<1>> port0 {
    .width = 8,
    .name = "stream_control_in",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_stream_control_in),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_stream_control_in),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_stream_control_in),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_stream_control_in),
#endif
  };
  port0.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_stream_control_in;
  port0.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port1 {
    .width = 8,
    .name = "stream_sigmoid_switch",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_stream_sigmoid_switch),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_stream_sigmoid_switch),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_stream_sigmoid_switch),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_stream_sigmoid_switch),
#endif
  };
  port1.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_stream_sigmoid_switch;
  port1.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port2 {
    .width = 16,
    .name = "vector_in_len",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_vector_in_len),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_vector_in_len),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_vector_in_len),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_vector_in_len),
#endif
  };
  port2.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_vector_in_len;
  port2.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port3 {
    .width = 16,
    .name = "vector_out_len",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_vector_out_len),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_vector_out_len),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_vector_out_len),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_vector_out_len),
#endif
  };
  port3.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_vector_out_len;
  port3.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<4>> port4 {
    .width = 32,
    .name = "stream_vector_in",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_stream_vector_in),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_stream_vector_in),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_stream_vector_in),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_stream_vector_in),
#endif
  };
  port4.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_stream_vector_in;
  port4.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<4>> port5 {
    .width = 32,
    .name = "stream_weight_in",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_stream_weight_in),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_stream_weight_in),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_stream_weight_in),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_stream_weight_in),
#endif
  };
  port5.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_stream_weight_in;
  port5.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<8>> port6 {
    .width = 48,
    .name = "stream_bias_in",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_stream_bias_in),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_stream_bias_in),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_stream_bias_in),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_stream_bias_in),
#endif
  };
  port6.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_stream_bias_in;
  port6.hasWrite = false;

  static hls::sim::KpnStream<hls::sim::Byte<16>> port7 {
    .width = 128,
    .name = "stream_vector_out",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_stream_vector_out),
#else
    .writer = new hls::sim::KpnWriter(AUTOTB_TVOUT_stream_vector_out),
    .swriter = new hls::sim::KpnWriter(WRAPC_STREAM_SIZE_OUT_stream_vector_out),
    .gwriter = new hls::sim::KpnWriter(WRAPC_STREAM_EGRESS_STATUS_stream_vector_out),
#endif
  };
  port7.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_stream_vector_out;
  port7.hasWrite = true;
  hls::stream<hls::sim::Byte<16>> stream7;

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port0);
    check(port1);
    check(port2);
    check(port3);
    check(port4);
    check(port5);
    check(port6);
    check(port7);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    hls::sim::for_Kpn_istream(port0, tcl);
    hls::sim::for_Kpn_istream(port1, tcl);
    hls::sim::for_Kpn_istream(port2, tcl);
    hls::sim::for_Kpn_istream(port3, tcl);
    hls::sim::for_Kpn_istream(port4, tcl);
    hls::sim::for_Kpn_istream(port5, tcl);
    hls::sim::for_Kpn_istream(port6, tcl);
    hls::sim::task_for_Kpn_ostream(port7, tcl, stream7);
    CodeState = CALL_C_DUT;
    RBM_hw_stub_wrapper(__xlx_apatb_param_stream_control_in, __xlx_apatb_param_stream_sigmoid_switch, __xlx_apatb_param_vector_in_len, __xlx_apatb_param_vector_out_len, __xlx_apatb_param_stream_vector_in, __xlx_apatb_param_stream_weight_in, __xlx_apatb_param_stream_bias_in, &stream7);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}