#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_task.h"
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
unsigned int ap_apatb_stream_control_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_control_in_V_size_Reader("../tv/stream_size/stream_size_in_stream_control_in.dat");
unsigned int ap_apatb_stream_sigmoid_switch_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_sigmoid_switch_V_size_Reader("../tv/stream_size/stream_size_in_stream_sigmoid_switch.dat");
unsigned int ap_apatb_vector_in_len_cap_bc;
static AESL_RUNTIME_BC __xlx_vector_in_len_V_size_Reader("../tv/stream_size/stream_size_in_vector_in_len.dat");
unsigned int ap_apatb_vector_out_len_cap_bc;
static AESL_RUNTIME_BC __xlx_vector_out_len_V_size_Reader("../tv/stream_size/stream_size_in_vector_out_len.dat");
unsigned int ap_apatb_stream_vector_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_vector_in_V_size_Reader("../tv/stream_size/stream_size_in_stream_vector_in.dat");
unsigned int ap_apatb_stream_weight_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_weight_in_V_size_Reader("../tv/stream_size/stream_size_in_stream_weight_in.dat");
unsigned int ap_apatb_stream_bias_in_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_bias_in_V_size_Reader("../tv/stream_size/stream_size_in_stream_bias_in.dat");
unsigned int ap_apatb_stream_vector_out_cap_bc;
static AESL_RUNTIME_BC __xlx_stream_vector_out_V_size_Reader("../tv/stream_size/stream_size_out_stream_vector_out.dat");
using hls::sim::Byte;
struct __cosim_s1__ { char data[1]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s16__ { char data[16]; };
extern "C" void RBM(__cosim_s1__*, __cosim_s1__*, __cosim_s2__*, __cosim_s2__*, __cosim_s4__*, __cosim_s4__*, __cosim_s8__*, __cosim_s16__*);
extern "C" void apatb_RBM_hw(volatile void * __xlx_apatb_param_stream_control_in, volatile void * __xlx_apatb_param_stream_sigmoid_switch, volatile void * __xlx_apatb_param_vector_in_len, volatile void * __xlx_apatb_param_vector_out_len, volatile void * __xlx_apatb_param_stream_vector_in, volatile void * __xlx_apatb_param_stream_weight_in, volatile void * __xlx_apatb_param_stream_bias_in, volatile void * __xlx_apatb_param_stream_vector_out) {
using hls::sim::createStream;
auto* sstream_control_in = createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_control_in);
auto* sstream_sigmoid_switch = createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_sigmoid_switch);
auto* svector_in_len = createStream((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vector_in_len);
auto* svector_out_len = createStream((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vector_out_len);
auto* sstream_vector_in = createStream((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_vector_in);
auto* sstream_weight_in = createStream((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_weight_in);
auto* sstream_bias_in = createStream((hls::stream<__cosim_s8__>*)__xlx_apatb_param_stream_bias_in);
  //Create input buffer for stream_vector_out
  ap_apatb_stream_vector_out_cap_bc = __xlx_stream_vector_out_V_size_Reader.read_size();
  __cosim_s16__* __xlx_stream_vector_out_input_buffer= new __cosim_s16__[ap_apatb_stream_vector_out_cap_bc];
auto* sstream_vector_out = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_stream_vector_out);
  // DUT call
  RBM(sstream_control_in->data<__cosim_s1__>(), sstream_sigmoid_switch->data<__cosim_s1__>(), svector_in_len->data<__cosim_s2__>(), svector_out_len->data<__cosim_s2__>(), sstream_vector_in->data<__cosim_s4__>(), sstream_weight_in->data<__cosim_s4__>(), sstream_bias_in->data<__cosim_s8__>(), sstream_vector_out->data<__cosim_s16__>());
sstream_control_in->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_control_in);
sstream_sigmoid_switch->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_stream_sigmoid_switch);
svector_in_len->transfer((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vector_in_len);
svector_out_len->transfer((hls::stream<__cosim_s2__>*)__xlx_apatb_param_vector_out_len);
sstream_vector_in->transfer((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_vector_in);
sstream_weight_in->transfer((hls::stream<__cosim_s4__>*)__xlx_apatb_param_stream_weight_in);
sstream_bias_in->transfer((hls::stream<__cosim_s8__>*)__xlx_apatb_param_stream_bias_in);
sstream_vector_out->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_stream_vector_out);
}
