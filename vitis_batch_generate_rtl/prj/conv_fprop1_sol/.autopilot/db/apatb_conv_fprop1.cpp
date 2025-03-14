#include "hls_signal_handler.h"
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
#include <set>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_directio.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_ap_core "../tv/cdatafile/c.conv_fprop1.autotvin_ap_core.dat"
#define AUTOTB_TVOUT_ap_core "../tv/cdatafile/c.conv_fprop1.autotvout_ap_core.dat"
#define AUTOTB_TVIN_ap_part "../tv/cdatafile/c.conv_fprop1.autotvin_ap_part.dat"
#define AUTOTB_TVOUT_ap_part "../tv/cdatafile/c.conv_fprop1.autotvout_ap_part.dat"
#define AUTOTB_TVIN_ap_parent "../tv/cdatafile/c.conv_fprop1.autotvin_ap_parent.dat"
#define AUTOTB_TVOUT_ap_parent "../tv/cdatafile/c.conv_fprop1.autotvout_ap_parent.dat"
#define AUTOTB_TVIN_input_layer1_map_w "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer1_map_w.dat"
#define AUTOTB_TVOUT_input_layer1_map_w "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer1_map_w.dat"
#define AUTOTB_TVIN_input_layer1_map_h "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer1_map_h.dat"
#define AUTOTB_TVOUT_input_layer1_map_h "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer1_map_h.dat"
#define AUTOTB_TVIN_input_layer1_map_count "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer1_map_count.dat"
#define AUTOTB_TVOUT_input_layer1_map_count "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer1_map_count.dat"
#define AUTOTB_TVIN_input_layer1_kernel_w "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer1_kernel_w.dat"
#define AUTOTB_TVOUT_input_layer1_kernel_w "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer1_kernel_w.dat"
#define AUTOTB_TVIN_input_layer1_kernel_h "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer1_kernel_h.dat"
#define AUTOTB_TVOUT_input_layer1_kernel_h "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer1_kernel_h.dat"
#define AUTOTB_TVIN_input_layer1_kernel_count "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer1_kernel_count.dat"
#define AUTOTB_TVOUT_input_layer1_kernel_count "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer1_kernel_count.dat"
#define AUTOTB_TVIN_input_layer2_data "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer2_data.dat"
#define AUTOTB_TVOUT_input_layer2_data "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer2_data.dat"
#define AUTOTB_TVIN_input_layer2_error "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer2_error.dat"
#define AUTOTB_TVOUT_input_layer2_error "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer2_error.dat"
#define AUTOTB_TVIN_input_layer2_b "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer2_b.dat"
#define AUTOTB_TVOUT_input_layer2_b "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer2_b.dat"
#define AUTOTB_TVIN_input_layer2_db "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer2_db.dat"
#define AUTOTB_TVOUT_input_layer2_db "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer2_db.dat"
#define AUTOTB_TVIN_input_layer2_W "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer2_W.dat"
#define AUTOTB_TVOUT_input_layer2_W "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer2_W.dat"
#define AUTOTB_TVIN_input_layer2_dW "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer2_dW.dat"
#define AUTOTB_TVOUT_input_layer2_dW "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer2_dW.dat"
#define AUTOTB_TVIN_input_layer2_map_common "../tv/cdatafile/c.conv_fprop1.autotvin_input_layer2_map_common.dat"
#define AUTOTB_TVOUT_input_layer2_map_common "../tv/cdatafile/c.conv_fprop1.autotvout_input_layer2_map_common.dat"
#define AUTOTB_TVIN_c1_conv_layer1_map_w "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer1_map_w.dat"
#define AUTOTB_TVOUT_c1_conv_layer1_map_w "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer1_map_w.dat"
#define AUTOTB_TVIN_c1_conv_layer1_map_h "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer1_map_h.dat"
#define AUTOTB_TVOUT_c1_conv_layer1_map_h "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer1_map_h.dat"
#define AUTOTB_TVIN_c1_conv_layer1_map_count "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer1_map_count.dat"
#define AUTOTB_TVOUT_c1_conv_layer1_map_count "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer1_map_count.dat"
#define AUTOTB_TVIN_c1_conv_layer1_kernel_w "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer1_kernel_w.dat"
#define AUTOTB_TVOUT_c1_conv_layer1_kernel_w "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer1_kernel_w.dat"
#define AUTOTB_TVIN_c1_conv_layer1_kernel_h "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer1_kernel_h.dat"
#define AUTOTB_TVOUT_c1_conv_layer1_kernel_h "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer1_kernel_h.dat"
#define AUTOTB_TVIN_c1_conv_layer1_kernel_count "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer1_kernel_count.dat"
#define AUTOTB_TVOUT_c1_conv_layer1_kernel_count "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer1_kernel_count.dat"
#define AUTOTB_TVIN_c1_conv_layer2_data "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer2_data.dat"
#define AUTOTB_TVOUT_c1_conv_layer2_data "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer2_data.dat"
#define AUTOTB_TVIN_c1_conv_layer2_error "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer2_error.dat"
#define AUTOTB_TVOUT_c1_conv_layer2_error "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer2_error.dat"
#define AUTOTB_TVIN_c1_conv_layer2_b "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer2_b.dat"
#define AUTOTB_TVOUT_c1_conv_layer2_b "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer2_b.dat"
#define AUTOTB_TVIN_c1_conv_layer2_db "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer2_db.dat"
#define AUTOTB_TVOUT_c1_conv_layer2_db "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer2_db.dat"
#define AUTOTB_TVIN_c1_conv_layer2_W "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer2_W.dat"
#define AUTOTB_TVOUT_c1_conv_layer2_W "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer2_W.dat"
#define AUTOTB_TVIN_c1_conv_layer2_dW "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer2_dW.dat"
#define AUTOTB_TVOUT_c1_conv_layer2_dW "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer2_dW.dat"
#define AUTOTB_TVIN_c1_conv_layer2_map_common "../tv/cdatafile/c.conv_fprop1.autotvin_c1_conv_layer2_map_common.dat"
#define AUTOTB_TVOUT_c1_conv_layer2_map_common "../tv/cdatafile/c.conv_fprop1.autotvout_c1_conv_layer2_map_common.dat"
#define AUTOTB_TVIN_pconnection "../tv/cdatafile/c.conv_fprop1.autotvin_pconnection.dat"
#define AUTOTB_TVOUT_pconnection "../tv/cdatafile/c.conv_fprop1.autotvout_pconnection.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_c1_conv_layer2_data "../tv/rtldatafile/rtl.conv_fprop1.autotvout_c1_conv_layer2_data.dat"
#define AUTOTB_TVOUT_PC_c1_conv_layer2_map_common "../tv/rtldatafile/rtl.conv_fprop1.autotvout_c1_conv_layer2_map_common.dat"


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
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

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

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
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

    size_t begin()
    {
      size_t n;
      read((unsigned char*)&n, sizeof(n));
      pos = ftell(fp);
      return n;
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
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

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
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

    void fmt(std::vector<size_t> &vec)
    {
      ss << "{";
      for (auto &x : vec) {
        ss << " " << x;
      }
      ss << " }";
    }

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

    void formatTransDepth()
    {
      ss << "set trans_depth {\n";
      for (auto &p : transDepth) {
        ss << "  {" << p.first << " ";
        fmt(p.second);
        ss << " " << bundleNameFor[p.first] << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatContainsVLA()
    {
      ss << "set containsVLA " << containsVLA << "\n";
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
      formatTransDepth();
      formatContainsVLA();
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
    typedef const std::string PortName;
    typedef const char *BundleName;
    std::map<PortName, std::vector<size_t>> transDepth;
    std::map<PortName, BundleName> bundleNameFor;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    bool containsVLA;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    void append(const char* portName, size_t dep, const char* bundleName)
    {
      std::lock_guard<std::mutex> guard(mut);
      transDepth[portName].push_back(dep);
      bundleNameFor[portName] = bundleName;
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

  template<typename E>
  struct DirectIO {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::directio<E>* param;
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
      while (param->valid()) {
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

    ~DirectIO()
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
    std::vector<const char*> mname;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      if (hbm) {
        return divide_ceil(nbytes[0], asize);
      }
      else {
        size_t depth = 0;
        for (size_t n : nbytes) {
          depth += divide_ceil(n, asize);
        }
        return depth;
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.clear();
        tcl.portHBM.clear();
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        size_t depthHBM = divide_ceil(nbytes[0], asize);
        tcl.append(tcl.nameHBM.c_str(), depthHBM, tcl.nameHBM.c_str());
        if (depthHBM > tcl.depthHBM) {
          tcl.depthHBM = depthHBM;
        }
      } else {
        tcl.set(name[0], depth());
        for (size_t i = 0; i < mname.size(); ++i) {
          tcl.append(mname[i], divide_ceil(nbytes[i], asize), name[0]);
        }
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

  struct A2Stream {
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
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
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

  template<typename E>
  void check(DirectIO<E> &port)
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

  void checkHBM(Memory<Input, Output> &port)
  {
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        size_t n = port.reader->begin();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
        port.reader->reset();
        port.reader->advance(port.asize*n);
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
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }

  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
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
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
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

  template<typename E>
  void dump(DirectIO<E> &port, size_t AESL_transaction)
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

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.mname[i]);
      }
    }

    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    if (port.hbm) {
      writer->from((unsigned char*)port.param[0], wbytes, port.asize,
                   port.nbytes[0], 0);
    }
    else {
      for (size_t i = 0; i < port.param.size(); ++i) {
        writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                     port.nbytes[i], 0);
      }
    }
  }

  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.mname[i]);
      }
    }
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    if (port.nbytes == 0) {
      error_on_depth_unspecified(port.name);
    }
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
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



extern "C"
void conv_fprop1_hw_stub_wrapper(hls::sim::Byte<1>, hls::sim::Byte<1>, hls::sim::Byte<1>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_conv_fprop1_hw(hls::sim::Byte<1> __xlx_apatb_param_ap_core, hls::sim::Byte<1> __xlx_apatb_param_ap_part, hls::sim::Byte<1> __xlx_apatb_param_ap_parent, void* __xlx_apatb_param_input_layer1_map_w, void* __xlx_apatb_param_input_layer1_map_h, void* __xlx_apatb_param_input_layer1_map_count, void* __xlx_apatb_param_input_layer1_kernel_w, void* __xlx_apatb_param_input_layer1_kernel_h, void* __xlx_apatb_param_input_layer1_kernel_count, void* __xlx_apatb_param_input_layer2_data, void* __xlx_apatb_param_input_layer2_error, void* __xlx_apatb_param_input_layer2_b, void* __xlx_apatb_param_input_layer2_db, void* __xlx_apatb_param_input_layer2_W, void* __xlx_apatb_param_input_layer2_dW, void* __xlx_apatb_param_input_layer2_map_common, void* __xlx_apatb_param_c1_conv_layer1_map_w, void* __xlx_apatb_param_c1_conv_layer1_map_h, void* __xlx_apatb_param_c1_conv_layer1_map_count, void* __xlx_apatb_param_c1_conv_layer1_kernel_w, void* __xlx_apatb_param_c1_conv_layer1_kernel_h, void* __xlx_apatb_param_c1_conv_layer1_kernel_count, void* __xlx_apatb_param_c1_conv_layer2_data, void* __xlx_apatb_param_c1_conv_layer2_error, void* __xlx_apatb_param_c1_conv_layer2_b, void* __xlx_apatb_param_c1_conv_layer2_db, void* __xlx_apatb_param_c1_conv_layer2_W, void* __xlx_apatb_param_c1_conv_layer2_dW, void* __xlx_apatb_param_c1_conv_layer2_map_common, void* __xlx_apatb_param_pconnection)
{
  static hls::sim::Register port0 {
    .name = "ap_core",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ap_core),
#endif
  };
  port0.param = &__xlx_apatb_param_ap_core;

  static hls::sim::Register port1 {
    .name = "ap_part",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ap_part),
#endif
  };
  port1.param = &__xlx_apatb_param_ap_part;

  static hls::sim::Register port2 {
    .name = "ap_parent",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ap_parent),
#endif
  };
  port2.param = &__xlx_apatb_param_ap_parent;

  static hls::sim::Register port3 {
    .name = "input_layer1_map_w",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer1_map_w),
#endif
  };
  port3.param = __xlx_apatb_param_input_layer1_map_w;

  static hls::sim::Register port4 {
    .name = "input_layer1_map_h",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer1_map_h),
#endif
  };
  port4.param = __xlx_apatb_param_input_layer1_map_h;

  static hls::sim::Register port5 {
    .name = "input_layer1_map_count",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer1_map_count),
#endif
  };
  port5.param = __xlx_apatb_param_input_layer1_map_count;

  static hls::sim::Register port6 {
    .name = "input_layer1_kernel_w",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer1_kernel_w),
#endif
  };
  port6.param = __xlx_apatb_param_input_layer1_kernel_w;

  static hls::sim::Register port7 {
    .name = "input_layer1_kernel_h",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer1_kernel_h),
#endif
  };
  port7.param = __xlx_apatb_param_input_layer1_kernel_h;

  static hls::sim::Register port8 {
    .name = "input_layer1_kernel_count",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer1_kernel_count),
#endif
  };
  port8.param = __xlx_apatb_param_input_layer1_kernel_count;

  static hls::sim::Register port9 {
    .name = "c1_conv_layer1_map_w",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer1_map_w),
#endif
  };
  port9.param = __xlx_apatb_param_c1_conv_layer1_map_w;

  static hls::sim::Register port10 {
    .name = "c1_conv_layer1_map_h",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer1_map_h),
#endif
  };
  port10.param = __xlx_apatb_param_c1_conv_layer1_map_h;

  static hls::sim::Register port11 {
    .name = "c1_conv_layer1_map_count",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer1_map_count),
#endif
  };
  port11.param = __xlx_apatb_param_c1_conv_layer1_map_count;

  static hls::sim::Register port12 {
    .name = "c1_conv_layer1_kernel_w",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer1_kernel_w),
#endif
  };
  port12.param = __xlx_apatb_param_c1_conv_layer1_kernel_w;

  static hls::sim::Register port13 {
    .name = "c1_conv_layer1_kernel_h",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer1_kernel_h),
#endif
  };
  port13.param = __xlx_apatb_param_c1_conv_layer1_kernel_h;

  static hls::sim::Register port14 {
    .name = "c1_conv_layer1_kernel_count",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer1_kernel_count),
#endif
  };
  port14.param = __xlx_apatb_param_c1_conv_layer1_kernel_count;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port15 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port15 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "input_layer2_data" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_input_layer2_data),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer2_data),
#endif
#endif
    .hasWrite = { false },
  };
  port15.param = { __xlx_apatb_param_input_layer2_data };
  port15.mname = { "input_layer2_data" };
  port15.nbytes = { 983040 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port16 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port16 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "input_layer2_error" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_input_layer2_error),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer2_error),
#endif
#endif
    .hasWrite = { false },
  };
  port16.param = { __xlx_apatb_param_input_layer2_error };
  port16.mname = { "input_layer2_error" };
  port16.nbytes = { 983040 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port17 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port17 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "input_layer2_b" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_input_layer2_b),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer2_b),
#endif
#endif
    .hasWrite = { false },
  };
  port17.param = { __xlx_apatb_param_input_layer2_b };
  port17.mname = { "input_layer2_b" };
  port17.nbytes = { 960 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port18 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port18 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "input_layer2_db" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_input_layer2_db),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer2_db),
#endif
#endif
    .hasWrite = { false },
  };
  port18.param = { __xlx_apatb_param_input_layer2_db };
  port18.mname = { "input_layer2_db" };
  port18.nbytes = { 960 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port19 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port19 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "input_layer2_W" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_input_layer2_W),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer2_W),
#endif
#endif
    .hasWrite = { false },
  };
  port19.param = { __xlx_apatb_param_input_layer2_W };
  port19.mname = { "input_layer2_W" };
  port19.nbytes = { 384000 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port20 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port20 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "input_layer2_dW" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_input_layer2_dW),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer2_dW),
#endif
#endif
    .hasWrite = { false },
  };
  port20.param = { __xlx_apatb_param_input_layer2_dW };
  port20.mname = { "input_layer2_dW" };
  port20.nbytes = { 384000 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port21 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port21 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "input_layer2_map_common" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_input_layer2_map_common),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_input_layer2_map_common),
#endif
#endif
    .hasWrite = { false },
  };
  port21.param = { __xlx_apatb_param_input_layer2_map_common };
  port21.mname = { "input_layer2_map_common" };
  port21.nbytes = { 8192 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port22 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port22 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "c1_conv_layer2_data" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_c1_conv_layer2_data),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_c1_conv_layer2_data),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_c1_conv_layer2_data),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_c1_conv_layer2_data),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_c1_conv_layer2_data),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer2_data),
#endif
#endif
    .hasWrite = { true },
  };
  port22.param = { __xlx_apatb_param_c1_conv_layer2_data };
  port22.mname = { "c1_conv_layer2_data" };
  port22.nbytes = { 983040 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port23 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port23 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "c1_conv_layer2_error" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_c1_conv_layer2_error),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer2_error),
#endif
#endif
    .hasWrite = { false },
  };
  port23.param = { __xlx_apatb_param_c1_conv_layer2_error };
  port23.mname = { "c1_conv_layer2_error" };
  port23.nbytes = { 983040 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port24 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port24 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "c1_conv_layer2_b" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_c1_conv_layer2_b),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer2_b),
#endif
#endif
    .hasWrite = { false },
  };
  port24.param = { __xlx_apatb_param_c1_conv_layer2_b };
  port24.mname = { "c1_conv_layer2_b" };
  port24.nbytes = { 960 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port25 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port25 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "c1_conv_layer2_db" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_c1_conv_layer2_db),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer2_db),
#endif
#endif
    .hasWrite = { false },
  };
  port25.param = { __xlx_apatb_param_c1_conv_layer2_db };
  port25.mname = { "c1_conv_layer2_db" };
  port25.nbytes = { 960 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port26 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port26 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "c1_conv_layer2_W" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_c1_conv_layer2_W),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer2_W),
#endif
#endif
    .hasWrite = { false },
  };
  port26.param = { __xlx_apatb_param_c1_conv_layer2_W };
  port26.mname = { "c1_conv_layer2_W" };
  port26.nbytes = { 384000 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port27 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port27 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "c1_conv_layer2_dW" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_c1_conv_layer2_dW),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer2_dW),
#endif
#endif
    .hasWrite = { false },
  };
  port27.param = { __xlx_apatb_param_c1_conv_layer2_dW };
  port27.mname = { "c1_conv_layer2_dW" };
  port27.nbytes = { 384000 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port28 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port28 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "c1_conv_layer2_map_common" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_c1_conv_layer2_map_common),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_c1_conv_layer2_map_common),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_c1_conv_layer2_map_common),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_c1_conv_layer2_map_common),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_c1_conv_layer2_map_common),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c1_conv_layer2_map_common),
#endif
#endif
    .hasWrite = { true },
  };
  port28.param = { __xlx_apatb_param_c1_conv_layer2_map_common };
  port28.mname = { "c1_conv_layer2_map_common" };
  port28.nbytes = { 8192 };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port29 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port29 {
#endif
    .width = 1,
    .asize = 1,
    .hbm = false,
    .name = { "pconnection" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_pconnection),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_pconnection),
#endif
#endif
    .hasWrite = { false },
  };
  port29.param = { __xlx_apatb_param_pconnection };
  port29.mname = { "pconnection" };
  port29.nbytes = { 96 };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port22);
    check(port28);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    tcl.containsVLA = 0;
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    CodeState = CALL_C_DUT;
    conv_fprop1_hw_stub_wrapper(__xlx_apatb_param_ap_core, __xlx_apatb_param_ap_part, __xlx_apatb_param_ap_parent, __xlx_apatb_param_input_layer1_map_w, __xlx_apatb_param_input_layer1_map_h, __xlx_apatb_param_input_layer1_map_count, __xlx_apatb_param_input_layer1_kernel_w, __xlx_apatb_param_input_layer1_kernel_h, __xlx_apatb_param_input_layer1_kernel_count, __xlx_apatb_param_input_layer2_data, __xlx_apatb_param_input_layer2_error, __xlx_apatb_param_input_layer2_b, __xlx_apatb_param_input_layer2_db, __xlx_apatb_param_input_layer2_W, __xlx_apatb_param_input_layer2_dW, __xlx_apatb_param_input_layer2_map_common, __xlx_apatb_param_c1_conv_layer1_map_w, __xlx_apatb_param_c1_conv_layer1_map_h, __xlx_apatb_param_c1_conv_layer1_map_count, __xlx_apatb_param_c1_conv_layer1_kernel_w, __xlx_apatb_param_c1_conv_layer1_kernel_h, __xlx_apatb_param_c1_conv_layer1_kernel_count, __xlx_apatb_param_c1_conv_layer2_data, __xlx_apatb_param_c1_conv_layer2_error, __xlx_apatb_param_c1_conv_layer2_b, __xlx_apatb_param_c1_conv_layer2_db, __xlx_apatb_param_c1_conv_layer2_W, __xlx_apatb_param_c1_conv_layer2_dW, __xlx_apatb_param_c1_conv_layer2_map_common, __xlx_apatb_param_pconnection);
    CodeState = DUMP_OUTPUTS;
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port28, port28.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}