// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __RBM_mul_mul_25s_16s_41_4_1__HH__
#define __RBM_mul_mul_25s_16s_41_4_1__HH__
#include "RBM_mul_mul_25s_16s_41_4_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(RBM_mul_mul_25s_16s_41_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    RBM_mul_mul_25s_16s_41_4_1_DSP48_0 RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U;

    SC_CTOR(RBM_mul_mul_25s_16s_41_4_1):  RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U ("RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U") {
        RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U.clk(clk);
        RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U.rst(reset);
        RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U.ce(ce);
        RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U.a(din0);
        RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U.b(din1);
        RBM_mul_mul_25s_16s_41_4_1_DSP48_0_U.p(dout);

    }

};

#endif //
