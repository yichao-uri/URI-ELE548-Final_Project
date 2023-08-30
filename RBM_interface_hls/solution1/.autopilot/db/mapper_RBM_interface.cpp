#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

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
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_axis_control_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_control_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_control_in_V_data_V.dat");
unsigned int ap_apatb_axis_control_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_control_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_control_in_V_keep_V.dat");
unsigned int ap_apatb_axis_control_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_control_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_control_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_control_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_control_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_control_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_sigmoid_switch_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_sigmoid_switch_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_sigmoid_switch_in_V_data_V.dat");
unsigned int ap_apatb_axis_sigmoid_switch_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_sigmoid_switch_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_sigmoid_switch_in_V_keep_V.dat");
unsigned int ap_apatb_axis_sigmoid_switch_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_sigmoid_switch_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_sigmoid_switch_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_sigmoid_switch_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_sigmoid_switch_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_sigmoid_switch_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_vector_in_len_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_len_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_len_in_V_data_V.dat");
unsigned int ap_apatb_axis_vector_in_len_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_len_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_len_in_V_keep_V.dat");
unsigned int ap_apatb_axis_vector_in_len_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_len_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_len_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_vector_in_len_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_len_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_len_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_vector_out_len_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_len_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_out_len_in_V_data_V.dat");
unsigned int ap_apatb_axis_vector_out_len_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_len_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_out_len_in_V_keep_V.dat");
unsigned int ap_apatb_axis_vector_out_len_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_len_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_out_len_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_vector_out_len_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_len_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_out_len_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_vector_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_V_data_V.dat");
unsigned int ap_apatb_axis_vector_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_V_keep_V.dat");
unsigned int ap_apatb_axis_vector_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_vector_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_vector_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_weight_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_weight_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_weight_in_V_data_V.dat");
unsigned int ap_apatb_axis_weight_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_weight_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_weight_in_V_keep_V.dat");
unsigned int ap_apatb_axis_weight_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_weight_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_weight_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_weight_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_weight_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_weight_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_bias_in_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_bias_in_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_bias_in_V_data_V.dat");
unsigned int ap_apatb_axis_bias_in_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_bias_in_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_bias_in_V_keep_V.dat");
unsigned int ap_apatb_axis_bias_in_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_bias_in_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_bias_in_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_bias_in_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_bias_in_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_axis_bias_in_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_axis_vector_out_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_axis_vector_out_V_data_V.dat");
unsigned int ap_apatb_axis_vector_out_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_axis_vector_out_V_keep_V.dat");
unsigned int ap_apatb_axis_vector_out_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_axis_vector_out_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_axis_vector_out_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_axis_vector_out_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_axis_vector_out_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_stream_control_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_control_in_V_size_Reader("../tv/stream_size/stream_size_out_stream_control_in.dat");
unsigned int ap_apatb_stream_sigmoid_switch_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_sigmoid_switch_in_V_size_Reader("../tv/stream_size/stream_size_out_stream_sigmoid_switch_in.dat");
unsigned int ap_apatb_stream_vector_in_len_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_vector_in_len_in_V_size_Reader("../tv/stream_size/stream_size_out_stream_vector_in_len_in.dat");
unsigned int ap_apatb_stream_vector_out_len_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_vector_out_len_in_V_size_Reader("../tv/stream_size/stream_size_out_stream_vector_out_len_in.dat");
unsigned int ap_apatb_stream_vector_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_vector_in_V_size_Reader("../tv/stream_size/stream_size_out_stream_vector_in.dat");
unsigned int ap_apatb_stream_weight_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_weight_in_V_size_Reader("../tv/stream_size/stream_size_out_stream_weight_in.dat");
unsigned int ap_apatb_stream_bias_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_bias_in_V_size_Reader("../tv/stream_size/stream_size_out_stream_bias_in.dat");
unsigned int ap_apatb_stream_vector_out_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_vector_out_V_size_Reader("../tv/stream_size/stream_size_in_stream_vector_out.dat");
using hls::sim::Byte;
struct __cosim_s1__ { char data[1]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s16__ { char data[16]; };
extern "C" void RBM_interface(volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , __cosim_s1__*, __cosim_s1__*, __cosim_s2__*, __cosim_s2__*, __cosim_s4__*, __cosim_s4__*, __cosim_s8__*, __cosim_s16__*);
extern "C" void apatb_RBM_interface_hw(volatile void * __xlx_apatb_param_axis_control_in_V_data_V, volatile void * __xlx_apatb_param_axis_control_in_V_keep_V, volatile void * __xlx_apatb_param_axis_control_in_V_strb_V, volatile void * __xlx_apatb_param_axis_control_in_V_last_V, volatile void * __xlx_apatb_param_axis_sigmoid_switch_in_V_data_V, volatile void * __xlx_apatb_param_axis_sigmoid_switch_in_V_keep_V, volatile void * __xlx_apatb_param_axis_sigmoid_switch_in_V_strb_V, volatile void * __xlx_apatb_param_axis_sigmoid_switch_in_V_last_V, volatile void * __xlx_apatb_param_axis_vector_in_len_in_V_data_V, volatile void * __xlx_apatb_param_axis_vector_in_len_in_V_keep_V, volatile void * __xlx_apatb_param_axis_vector_in_len_in_V_strb_V, volatile void * __xlx_apatb_param_axis_vector_in_len_in_V_last_V, volatile void * __xlx_apatb_param_axis_vector_out_len_in_V_data_V, volatile void * __xlx_apatb_param_axis_vector_out_len_in_V_keep_V, volatile void * __xlx_apatb_param_axis_vector_out_len_in_V_strb_V, volatile void * __xlx_apatb_param_axis_vector_out_len_in_V_last_V, volatile void * __xlx_apatb_param_axis_vector_in_V_data_V, volatile void * __xlx_apatb_param_axis_vector_in_V_keep_V, volatile void * __xlx_apatb_param_axis_vector_in_V_strb_V, volatile void * __xlx_apatb_param_axis_vector_in_V_last_V, volatile void * __xlx_apatb_param_axis_weight_in_V_data_V, volatile void * __xlx_apatb_param_axis_weight_in_V_keep_V, volatile void * __xlx_apatb_param_axis_weight_in_V_strb_V, volatile void * __xlx_apatb_param_axis_weight_in_V_last_V, volatile void * __xlx_apatb_param_axis_bias_in_V_data_V, volatile void * __xlx_apatb_param_axis_bias_in_V_keep_V, volatile void * __xlx_apatb_param_axis_bias_in_V_strb_V, volatile void * __xlx_apatb_param_axis_bias_in_V_last_V, volatile void * __xlx_apatb_param_axis_vector_out_V_data_V, volatile void * __xlx_apatb_param_axis_vector_out_V_keep_V, volatile void * __xlx_apatb_param_axis_vector_out_V_strb_V, volatile void * __xlx_apatb_param_axis_vector_out_V_last_V, volatile void * __xlx_apatb_param_stream_control_in, volatile void * __xlx_apatb_param_stream_sigmoid_switch_in, volatile void * __xlx_apatb_param_stream_vector_in_len_in, volatile void * __xlx_apatb_param_stream_vector_out_len_in, volatile void * __xlx_apatb_param_stream_vector_in, volatile void * __xlx_apatb_param_stream_weight_in, volatile void * __xlx_apatb_param_stream_bias_in, volatile void * __xlx_apatb_param_stream_vector_out) {
using hls::sim::createStream;
auto* saxis_control_in_V_data_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_data_V);
auto* saxis_control_in_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_keep_V);
auto* saxis_control_in_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_strb_V);
auto* saxis_control_in_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_last_V);
auto* saxis_sigmoid_switch_in_V_data_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_data_V);
auto* saxis_sigmoid_switch_in_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_keep_V);
auto* saxis_sigmoid_switch_in_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_strb_V);
auto* saxis_sigmoid_switch_in_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_last_V);
auto* saxis_vector_in_len_in_V_data_V = createStream((hls::stream<short>*)__xlx_apatb_param_axis_vector_in_len_in_V_data_V);
auto* saxis_vector_in_len_in_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_len_in_V_keep_V);
auto* saxis_vector_in_len_in_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_len_in_V_strb_V);
auto* saxis_vector_in_len_in_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_len_in_V_last_V);
auto* saxis_vector_out_len_in_V_data_V = createStream((hls::stream<short>*)__xlx_apatb_param_axis_vector_out_len_in_V_data_V);
auto* saxis_vector_out_len_in_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_len_in_V_keep_V);
auto* saxis_vector_out_len_in_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_len_in_V_strb_V);
auto* saxis_vector_out_len_in_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_len_in_V_last_V);
auto* saxis_vector_in_V_data_V = createStream((hls::stream<short>*)__xlx_apatb_param_axis_vector_in_V_data_V);
auto* saxis_vector_in_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_V_keep_V);
auto* saxis_vector_in_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_V_strb_V);
auto* saxis_vector_in_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_V_last_V);
auto* saxis_weight_in_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_axis_weight_in_V_data_V);
auto* saxis_weight_in_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_weight_in_V_keep_V);
auto* saxis_weight_in_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_weight_in_V_strb_V);
auto* saxis_weight_in_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_weight_in_V_last_V);
auto* saxis_bias_in_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_axis_bias_in_V_data_V);
auto* saxis_bias_in_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_bias_in_V_keep_V);
auto* saxis_bias_in_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_bias_in_V_strb_V);
auto* saxis_bias_in_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_bias_in_V_last_V);
  //Create input buffer for axis_vector_out_V_data_V
  ap_apatb_axis_vector_out_V_data_V_cap_bc = __xlx_axis_vector_out_V_data_V_V_size_Reader.read_size();
  int* __xlx_axis_vector_out_V_data_V_input_buffer= new int[ap_apatb_axis_vector_out_V_data_V_cap_bc];
auto* saxis_vector_out_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_axis_vector_out_V_data_V);
  //Create input buffer for axis_vector_out_V_keep_V
  ap_apatb_axis_vector_out_V_keep_V_cap_bc = __xlx_axis_vector_out_V_keep_V_V_size_Reader.read_size();
  char* __xlx_axis_vector_out_V_keep_V_input_buffer= new char[ap_apatb_axis_vector_out_V_keep_V_cap_bc];
auto* saxis_vector_out_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_V_keep_V);
  //Create input buffer for axis_vector_out_V_strb_V
  ap_apatb_axis_vector_out_V_strb_V_cap_bc = __xlx_axis_vector_out_V_strb_V_V_size_Reader.read_size();
  char* __xlx_axis_vector_out_V_strb_V_input_buffer= new char[ap_apatb_axis_vector_out_V_strb_V_cap_bc];
auto* saxis_vector_out_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_V_strb_V);
  //Create input buffer for axis_vector_out_V_last_V
  ap_apatb_axis_vector_out_V_last_V_cap_bc = __xlx_axis_vector_out_V_last_V_V_size_Reader.read_size();
  char* __xlx_axis_vector_out_V_last_V_input_buffer= new char[ap_apatb_axis_vector_out_V_last_V_cap_bc];
auto* saxis_vector_out_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_V_last_V);
  //Create input buffer for stream_control_in
  ap_apatb_stream_control_in_cap_bc = __xlx_stream_control_in_V_size_Reader.read_size();
  __cosim_s1__* __xlx_stream_control_in_input_buffer= new __cosim_s1__[ap_apatb_stream_control_in_cap_bc];
auto* sstream_control_in = createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_control_in);
  //Create input buffer for stream_sigmoid_switch_in
  ap_apatb_stream_sigmoid_switch_in_cap_bc = __xlx_stream_sigmoid_switch_in_V_size_Reader.read_size();
  __cosim_s1__* __xlx_stream_sigmoid_switch_in_input_buffer= new __cosim_s1__[ap_apatb_stream_sigmoid_switch_in_cap_bc];
auto* sstream_sigmoid_switch_in = createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_sigmoid_switch_in);
  //Create input buffer for stream_vector_in_len_in
  ap_apatb_stream_vector_in_len_in_cap_bc = __xlx_stream_vector_in_len_in_V_size_Reader.read_size();
  __cosim_s2__* __xlx_stream_vector_in_len_in_input_buffer= new __cosim_s2__[ap_apatb_stream_vector_in_len_in_cap_bc];
auto* sstream_vector_in_len_in = createStream((hls::stream<__cosim_s2__>*)__xlx_apatb_param_stream_vector_in_len_in);
  //Create input buffer for stream_vector_out_len_in
  ap_apatb_stream_vector_out_len_in_cap_bc = __xlx_stream_vector_out_len_in_V_size_Reader.read_size();
  __cosim_s2__* __xlx_stream_vector_out_len_in_input_buffer= new __cosim_s2__[ap_apatb_stream_vector_out_len_in_cap_bc];
auto* sstream_vector_out_len_in = createStream((hls::stream<__cosim_s2__>*)__xlx_apatb_param_stream_vector_out_len_in);
  //Create input buffer for stream_vector_in
  ap_apatb_stream_vector_in_cap_bc = __xlx_stream_vector_in_V_size_Reader.read_size();
  __cosim_s4__* __xlx_stream_vector_in_input_buffer= new __cosim_s4__[ap_apatb_stream_vector_in_cap_bc];
auto* sstream_vector_in = createStream((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_vector_in);
  //Create input buffer for stream_weight_in
  ap_apatb_stream_weight_in_cap_bc = __xlx_stream_weight_in_V_size_Reader.read_size();
  __cosim_s4__* __xlx_stream_weight_in_input_buffer= new __cosim_s4__[ap_apatb_stream_weight_in_cap_bc];
auto* sstream_weight_in = createStream((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_weight_in);
  //Create input buffer for stream_bias_in
  ap_apatb_stream_bias_in_cap_bc = __xlx_stream_bias_in_V_size_Reader.read_size();
  __cosim_s8__* __xlx_stream_bias_in_input_buffer= new __cosim_s8__[ap_apatb_stream_bias_in_cap_bc];
auto* sstream_bias_in = createStream((hls::stream<__cosim_s8__>*)__xlx_apatb_param_stream_bias_in);
auto* sstream_vector_out = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_stream_vector_out);
  // DUT call
  RBM_interface(saxis_control_in_V_data_V->data<char>(), saxis_control_in_V_keep_V->data<char>(), saxis_control_in_V_strb_V->data<char>(), saxis_control_in_V_last_V->data<char>(), saxis_sigmoid_switch_in_V_data_V->data<char>(), saxis_sigmoid_switch_in_V_keep_V->data<char>(), saxis_sigmoid_switch_in_V_strb_V->data<char>(), saxis_sigmoid_switch_in_V_last_V->data<char>(), saxis_vector_in_len_in_V_data_V->data<short>(), saxis_vector_in_len_in_V_keep_V->data<char>(), saxis_vector_in_len_in_V_strb_V->data<char>(), saxis_vector_in_len_in_V_last_V->data<char>(), saxis_vector_out_len_in_V_data_V->data<short>(), saxis_vector_out_len_in_V_keep_V->data<char>(), saxis_vector_out_len_in_V_strb_V->data<char>(), saxis_vector_out_len_in_V_last_V->data<char>(), saxis_vector_in_V_data_V->data<short>(), saxis_vector_in_V_keep_V->data<char>(), saxis_vector_in_V_strb_V->data<char>(), saxis_vector_in_V_last_V->data<char>(), saxis_weight_in_V_data_V->data<int>(), saxis_weight_in_V_keep_V->data<char>(), saxis_weight_in_V_strb_V->data<char>(), saxis_weight_in_V_last_V->data<char>(), saxis_bias_in_V_data_V->data<int>(), saxis_bias_in_V_keep_V->data<char>(), saxis_bias_in_V_strb_V->data<char>(), saxis_bias_in_V_last_V->data<char>(), saxis_vector_out_V_data_V->data<int>(), saxis_vector_out_V_keep_V->data<char>(), saxis_vector_out_V_strb_V->data<char>(), saxis_vector_out_V_last_V->data<char>(), sstream_control_in->data<__cosim_s1__>(), sstream_sigmoid_switch_in->data<__cosim_s1__>(), sstream_vector_in_len_in->data<__cosim_s2__>(), sstream_vector_out_len_in->data<__cosim_s2__>(), sstream_vector_in->data<__cosim_s4__>(), sstream_weight_in->data<__cosim_s4__>(), sstream_bias_in->data<__cosim_s8__>(), sstream_vector_out->data<__cosim_s16__>());
saxis_control_in_V_data_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_data_V);
saxis_control_in_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_keep_V);
saxis_control_in_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_control_in_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_control_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_sigmoid_switch_in_V_data_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_data_V);
saxis_sigmoid_switch_in_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_keep_V);
saxis_sigmoid_switch_in_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_sigmoid_switch_in_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_sigmoid_switch_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_in_len_in_V_data_V->transfer((hls::stream<short>*)__xlx_apatb_param_axis_vector_in_len_in_V_data_V);
saxis_vector_in_len_in_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_len_in_V_keep_V);
saxis_vector_in_len_in_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_len_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_in_len_in_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_len_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_out_len_in_V_data_V->transfer((hls::stream<short>*)__xlx_apatb_param_axis_vector_out_len_in_V_data_V);
saxis_vector_out_len_in_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_len_in_V_keep_V);
saxis_vector_out_len_in_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_len_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_out_len_in_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_len_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_in_V_data_V->transfer((hls::stream<short>*)__xlx_apatb_param_axis_vector_in_V_data_V);
saxis_vector_in_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_V_keep_V);
saxis_vector_in_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_in_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_weight_in_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_axis_weight_in_V_data_V);
saxis_weight_in_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_weight_in_V_keep_V);
saxis_weight_in_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_weight_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_weight_in_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_weight_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_bias_in_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_axis_bias_in_V_data_V);
saxis_bias_in_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_bias_in_V_keep_V);
saxis_bias_in_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_bias_in_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_bias_in_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_bias_in_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_out_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_axis_vector_out_V_data_V);
saxis_vector_out_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_V_keep_V);
saxis_vector_out_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_V_strb_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
saxis_vector_out_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_axis_vector_out_V_last_V);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
s->transfer((hls::stream<char>*)__xlx_apatb_param_);
sstream_control_in->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_control_in);
sstream_sigmoid_switch_in->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_sigmoid_switch_in);
sstream_vector_in_len_in->transfer((hls::stream<__cosim_s2__>*)__xlx_apatb_param_stream_vector_in_len_in);
sstream_vector_out_len_in->transfer((hls::stream<__cosim_s2__>*)__xlx_apatb_param_stream_vector_out_len_in);
sstream_vector_in->transfer((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_vector_in);
sstream_weight_in->transfer((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_weight_in);
sstream_bias_in->transfer((hls::stream<__cosim_s8__>*)__xlx_apatb_param_stream_bias_in);
sstream_vector_out->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_stream_vector_out);
}
