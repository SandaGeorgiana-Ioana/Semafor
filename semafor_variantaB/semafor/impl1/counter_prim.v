// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Jan 14 12:15:43 2025
//
// Verilog Description of module counter
//

module counter (clk, rst, buton, pulse, rosu, verde, galben, led, 
            count_semafor) /* synthesis syn_module_defined=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(1[8:15])
    input clk;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    input rst;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(3[11:14])
    input buton;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(4[11:16])
    output pulse;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(5[16:21])
    output rosu;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(6[16:20])
    output verde;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(7[16:21])
    output galben;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(8[16:22])
    output [7:0]led;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    output [23:0]count_semafor;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    wire slow_clk /* synthesis is_clock=1, SET_AS_NETWORK=slow_clk */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(27[7:15])
    
    wire GND_net, VCC_net, rst_c, buton_c, rosu_c, verde_c, galben_c, 
        led_c_7, led_c_6, n9, n2944, led_c_1, led_c_0, count_semafor_c_23, 
        count_semafor_c_22, count_semafor_c_21, count_semafor_c_20, count_semafor_c_19, 
        count_semafor_c_18, count_semafor_c_17, count_semafor_c_16, count_semafor_c_15, 
        count_semafor_c_14, count_semafor_c_13, count_semafor_c_12, count_semafor_c_11, 
        count_semafor_c_10, count_semafor_c_9, count_semafor_c_8, count_semafor_c_7, 
        count_semafor_c_6, count_semafor_c_5, count_semafor_c_4, count_semafor_c_3, 
        count_semafor_c_2, count_semafor_c_1, count_semafor_c_0;
    wire [1:0]semafor_state;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(20[15:28])
    
    wire buton_push, n2884, n2883, buton_push_N_143;
    wire [31:0]count;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(126[14:19])
    
    wire n2882, n2887, n714;
    wire [1:0]semafor_state_1__N_35;
    
    wire verde_N_140;
    wire [7:0]led_7__N_1;
    
    wire n2886, count_31__N_217, n2892, n3013, n24, n23, clk_c_enable_26, 
        n17, slow_clk_enable_3, n2881, n2880, n2879, n2894, n2878, 
        n2877, n2876, n2875, n2874, n2873, n2872, n2871, n2954, 
        n2479, n2870, n2869, n36, n2912, n34, n2885, slow_clk_enable_2, 
        n2888, n2809, n32, n2735, n2945, n4, n3011, n3010, n30, 
        n3009, n37, n3008, n68, n77, n14, n102, n103, n104, 
        n105, n106, n107, n108, n109, n110, n111, n112, n113, 
        n114, n115, n116, n117, n118, n119, n120, n121, n122, 
        n123, n124, n125, n33, n3089, n28, n10, n2948, clk_c_enable_30, 
        n3014, n35, n2902;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(semafor_state[0]), .B(n2912), .C(n3008), .D(led_7__N_1[7]), 
         .Z(semafor_state_1__N_35[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    defparam i1_4_lut.init = 16'ha088;
    LUT4 i1748_2_lut (.A(buton_c), .B(led_7__N_1[7]), .Z(buton_push_N_143)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1748_2_lut.init = 16'h1111;
    FD1P3JX led_in_i0_i1 (.D(n17), .SP(clk_c_enable_26), .PD(n2902), .CK(clk_c), 
            .Q(led_c_0));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam led_in_i0_i1.GSR = "ENABLED";
    CCU2D sub_151_add_2_4 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2881), .COUT(n2882));
    defparam sub_151_add_2_4.INIT0 = 16'h5555;
    defparam sub_151_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_151_add_2_4.INJECT1_0 = "NO";
    defparam sub_151_add_2_4.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut (.A(semafor_state[0]), .B(n3008), .C(led_7__N_1[7]), 
         .Z(slow_clk_enable_2)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h2f2f;
    FD1P3IX count_semafor_163__i10 (.D(n116), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i10.GSR = "ENABLED";
    LUT4 i18_4_lut (.A(n23), .B(n36), .C(n32), .D(n24), .Z(n33)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i1754_3_lut_rep_5_4_lut (.A(count_semafor_c_2), .B(n33), .C(count_semafor_c_0), 
         .D(count_semafor_c_1), .Z(n3008)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i1754_3_lut_rep_5_4_lut.init = 16'h0111;
    FD1P3IX count_semafor_163__i11 (.D(n115), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i11.GSR = "ENABLED";
    OB rosu_pad (.I(rosu_c), .O(rosu));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(6[16:20])
    FD1P3AY verde_49 (.D(verde_N_140), .SP(slow_clk_enable_3), .CK(slow_clk), 
            .Q(verde_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam verde_49.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(count[29]), .B(count[27]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_9 (.A(semafor_state[0]), .B(led_7__N_1[7]), .Z(slow_clk_enable_3)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_9.init = 16'hbbbb;
    LUT4 i2_4_lut (.A(count_semafor_c_21), .B(count_semafor_c_20), .C(count_semafor_c_19), 
         .D(n2894), .Z(n2892)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    CCU2D sub_151_add_2_2 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2881));
    defparam sub_151_add_2_2.INIT0 = 16'h5000;
    defparam sub_151_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_151_add_2_2.INJECT1_0 = "NO";
    defparam sub_151_add_2_2.INJECT1_1 = "NO";
    FD1P3AX semafor_state_i0_i0 (.D(semafor_state_1__N_35[0]), .SP(clk_c_enable_30), 
            .CK(clk_c), .Q(semafor_state[0]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam semafor_state_i0_i0.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(count[28]), .B(count[30]), .C(count[26]), .D(count[24]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(semafor_state[0]), .B(n3008), .C(led_7__N_1[7]), 
         .Z(n2948)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    CCU2D count_semafor_163_add_4_25 (.A0(count_semafor_c_23), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2880), .S0(n102));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_25.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_25.INIT1 = 16'h0000;
    defparam count_semafor_163_add_4_25.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_25.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_23 (.A0(count_semafor_c_21), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_22), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2879), .COUT(n2880), .S0(n104), 
          .S1(n103));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_23.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_23.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_23.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_23.INJECT1_1 = "NO";
    FD1P3IX buton_push_52 (.D(buton_push_N_143), .SP(slow_clk_enable_2), 
            .CD(n2948), .CK(slow_clk), .Q(buton_push));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam buton_push_52.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_4 (.A(n3014), .B(count_semafor_c_12), .C(count_semafor_c_11), 
         .D(n2735), .Z(n2944)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_4.init = 16'heaaa;
    CCU2D count_semafor_163_add_4_21 (.A0(count_semafor_c_19), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_20), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2878), .COUT(n2879), .S0(n106), 
          .S1(n105));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_21.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_21.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_21.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_21.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(count_semafor_c_8), .B(count_semafor_c_10), .C(count_semafor_c_9), 
         .Z(n2735)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    defparam i1_3_lut.init = 16'hecec;
    CCU2D count_semafor_163_add_4_19 (.A0(count_semafor_c_17), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_18), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2877), .COUT(n2878), .S0(n108), 
          .S1(n107));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_19.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_19.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_19.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_19.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_17 (.A0(count_semafor_c_15), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_16), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2876), .COUT(n2877), .S0(n110), 
          .S1(n109));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_17.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_17.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_17.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_17.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_15 (.A0(count_semafor_c_13), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_14), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2875), .COUT(n2876), .S0(n112), 
          .S1(n111));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_15.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_15.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_15.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_15.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_13 (.A0(count_semafor_c_11), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_12), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2874), .COUT(n2875), .S0(n114), 
          .S1(n113));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_13.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_13.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_13.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_13.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_11 (.A0(count_semafor_c_9), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_10), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2873), .COUT(n2874), .S0(n116), 
          .S1(n115));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_11.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_11.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_11.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_11.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_9 (.A0(count_semafor_c_7), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_8), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2872), .COUT(n2873), .S0(n118), 
          .S1(n117));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_9.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_9.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_9.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_9.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_7 (.A0(count_semafor_c_5), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_6), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2871), .COUT(n2872), .S0(n120), 
          .S1(n119));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_7.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_7.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_7.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_7.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_5 (.A0(count_semafor_c_3), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_4), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2870), .COUT(n2871), .S0(n122), 
          .S1(n121));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_5.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_5.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_5.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_5.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_3 (.A0(count_semafor_c_1), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_semafor_c_2), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2869), .COUT(n2870), .S0(n124), 
          .S1(n123));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_3.INIT0 = 16'hfaaa;
    defparam count_semafor_163_add_4_3.INIT1 = 16'hfaaa;
    defparam count_semafor_163_add_4_3.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_3.INJECT1_1 = "NO";
    CCU2D count_semafor_163_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_semafor_c_0), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2869), .S1(n125));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163_add_4_1.INIT0 = 16'hF000;
    defparam count_semafor_163_add_4_1.INIT1 = 16'h0555;
    defparam count_semafor_163_add_4_1.INJECT1_0 = "NO";
    defparam count_semafor_163_add_4_1.INJECT1_1 = "NO";
    FD1P3IX count_semafor_163__i12 (.D(n114), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i12.GSR = "ENABLED";
    LUT4 i9_2_lut (.A(count_semafor_c_9), .B(count_semafor_c_4), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i9_2_lut.init = 16'heeee;
    FD1P3IX count_semafor_163__i3 (.D(n123), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i3.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i2 (.D(n124), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_1)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i2.GSR = "ENABLED";
    CCU2D sub_151_add_2_6 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2882), .COUT(n2883));
    defparam sub_151_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_151_add_2_6.INIT1 = 16'h5555;
    defparam sub_151_add_2_6.INJECT1_0 = "NO";
    defparam sub_151_add_2_6.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(count_semafor_c_21), .B(count_semafor_c_19), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i4_2_lut.init = 16'heeee;
    FD1P3IX count_semafor_163__i13 (.D(n113), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i13.GSR = "ENABLED";
    FD1P3IX galben_50 (.D(semafor_state[0]), .SP(slow_clk_enable_3), .CD(n3013), 
            .CK(slow_clk), .Q(galben_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam galben_50.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i7 (.D(n119), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i7.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i6 (.D(n120), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i6.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i5 (.D(n121), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_4)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i5.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i4 (.D(n122), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i4.GSR = "ENABLED";
    OB pulse_pad (.I(GND_net), .O(pulse));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(5[16:21])
    PFUMX i55 (.BLUT(n37), .ALUT(n2954), .C0(semafor_state[0]), .Z(n35));
    LUT4 i11_4_lut (.A(count_semafor_c_20), .B(count_semafor_c_23), .C(count_semafor_c_5), 
         .D(count_semafor_c_18), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i11_4_lut.init = 16'hfffe;
    CCU2D sub_151_add_2_10 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2884), .COUT(n2885));
    defparam sub_151_add_2_10.INIT0 = 16'h5aaa;
    defparam sub_151_add_2_10.INIT1 = 16'h5aaa;
    defparam sub_151_add_2_10.INJECT1_0 = "NO";
    defparam sub_151_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_151_add_2_18 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2888), .S1(n714));
    defparam sub_151_add_2_18.INIT0 = 16'h5555;
    defparam sub_151_add_2_18.INIT1 = 16'h0000;
    defparam sub_151_add_2_18.INJECT1_0 = "NO";
    defparam sub_151_add_2_18.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(semafor_state[0]), .B(led_7__N_1[7]), 
         .C(count_31__N_217), .D(slow_clk), .Z(clk_c_enable_26)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h00b0;
    FD1P3IX count_semafor_163__i14 (.D(n112), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i14.GSR = "ENABLED";
    CCU2D sub_151_add_2_16 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2887), .COUT(n2888));
    defparam sub_151_add_2_16.INIT0 = 16'h5555;
    defparam sub_151_add_2_16.INIT1 = 16'h5aaa;
    defparam sub_151_add_2_16.INJECT1_0 = "NO";
    defparam sub_151_add_2_16.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(count_semafor_c_11), .B(n34), .C(n28), .D(count_semafor_c_17), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i1651_2_lut_rep_7 (.A(semafor_state[0]), .B(led_7__N_1[7]), .Z(n3010)) /* synthesis lut_function=(A+(B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(64[4] 107[11])
    defparam i1651_2_lut_rep_7.init = 16'heeee;
    PFUMX i1392 (.BLUT(n77), .ALUT(n68), .C0(led_7__N_1[7]), .Z(semafor_state_1__N_35[0]));
    LUT4 i1293_2_lut_rep_10 (.A(semafor_state[0]), .B(led_7__N_1[7]), .Z(n3013)) /* synthesis lut_function=(A (B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam i1293_2_lut_rep_10.init = 16'h8888;
    FD1P3IX count_semafor_163__i15 (.D(n111), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i15.GSR = "ENABLED";
    FD1P3AX semafor_state_i0_i1 (.D(semafor_state_1__N_35[1]), .SP(clk_c_enable_30), 
            .CK(clk_c), .Q(led_7__N_1[7]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam semafor_state_i0_i1.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(semafor_state[0]), .B(led_7__N_1[7]), 
         .C(count_31__N_217), .D(slow_clk), .Z(n2902)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_5 (.A(n2809), .B(count_semafor_c_23), .C(n4), .D(n2945), 
         .Z(n37)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i1_4_lut_adj_5.init = 16'heca0;
    CCU2D sub_151_add_2_14 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2886), .COUT(n2887));
    defparam sub_151_add_2_14.INIT0 = 16'h5aaa;
    defparam sub_151_add_2_14.INIT1 = 16'h5aaa;
    defparam sub_151_add_2_14.INJECT1_0 = "NO";
    defparam sub_151_add_2_14.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_11 (.A(count_semafor_c_14), .B(count_semafor_c_15), 
         .C(count_semafor_c_13), .Z(n3014)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i2_3_lut_rep_11.init = 16'hfefe;
    LUT4 i5_2_lut_4_lut (.A(count_semafor_c_14), .B(count_semafor_c_15), 
         .C(count_semafor_c_13), .D(count_semafor_c_22), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i5_2_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n35), .B(slow_clk), .C(count_31__N_217), .Z(n2479)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i2_3_lut.init = 16'h2020;
    LUT4 i1292_1_lut_rep_8 (.A(led_7__N_1[7]), .Z(n3011)) /* synthesis lut_function=(!(A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(64[4] 107[11])
    defparam i1292_1_lut_rep_8.init = 16'h5555;
    LUT4 i1634_4_lut (.A(count_semafor_c_2), .B(n33), .C(count_semafor_c_1), 
         .D(count_semafor_c_0), .Z(n2809)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1634_4_lut.init = 16'heeec;
    LUT4 i1_2_lut_3_lut_adj_6 (.A(count_semafor_c_2), .B(n33), .C(count_semafor_c_1), 
         .Z(n2912)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_6.init = 16'hfefe;
    LUT4 i13_4_lut (.A(count_semafor_c_12), .B(count_semafor_c_8), .C(count_semafor_c_10), 
         .D(count_semafor_c_16), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i1666_1_lut_2_lut (.A(semafor_state[0]), .B(led_7__N_1[7]), .Z(verde_N_140)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(64[4] 107[11])
    defparam i1666_1_lut_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_7 (.A(n714), .B(n9), .C(n14), .D(n10), .Z(count_31__N_217)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_7.init = 16'hfffe;
    FD1P3AX led_in_i0_i8 (.D(led_7__N_1[7]), .SP(clk_c_enable_26), .CK(clk_c), 
            .Q(led_c_7));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam led_in_i0_i8.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i16 (.D(n110), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i16.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i1 (.D(n125), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_0)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i1.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i17 (.D(n109), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i17.GSR = "ENABLED";
    CCU2D sub_151_add_2_8 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2883), .COUT(n2884));
    defparam sub_151_add_2_8.INIT0 = 16'h5555;
    defparam sub_151_add_2_8.INIT1 = 16'h5555;
    defparam sub_151_add_2_8.INJECT1_0 = "NO";
    defparam sub_151_add_2_8.INJECT1_1 = "NO";
    FD1P3IX count_semafor_163__i18 (.D(n108), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i18.GSR = "ENABLED";
    OB count_semafor_pad_2 (.I(count_semafor_c_2), .O(count_semafor[2]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_3 (.I(count_semafor_c_3), .O(count_semafor[3]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_4 (.I(count_semafor_c_4), .O(count_semafor[4]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_5 (.I(count_semafor_c_5), .O(count_semafor[5]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_6 (.I(count_semafor_c_6), .O(count_semafor[6]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_7 (.I(count_semafor_c_7), .O(count_semafor[7]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_8 (.I(count_semafor_c_8), .O(count_semafor[8]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_9 (.I(count_semafor_c_9), .O(count_semafor[9]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_10 (.I(count_semafor_c_10), .O(count_semafor[10]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_11 (.I(count_semafor_c_11), .O(count_semafor[11]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_12 (.I(count_semafor_c_12), .O(count_semafor[12]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_13 (.I(count_semafor_c_13), .O(count_semafor[13]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_14 (.I(count_semafor_c_14), .O(count_semafor[14]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_15 (.I(count_semafor_c_15), .O(count_semafor[15]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_16 (.I(count_semafor_c_16), .O(count_semafor[16]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_17 (.I(count_semafor_c_17), .O(count_semafor[17]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_18 (.I(count_semafor_c_18), .O(count_semafor[18]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_19 (.I(count_semafor_c_19), .O(count_semafor[19]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_20 (.I(count_semafor_c_20), .O(count_semafor[20]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_21 (.I(count_semafor_c_21), .O(count_semafor[21]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_22 (.I(count_semafor_c_22), .O(count_semafor[22]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB count_semafor_pad_23 (.I(count_semafor_c_23), .O(count_semafor[23]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB led_pad_2 (.I(led_c_6), .O(led[2]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB led_pad_3 (.I(VCC_net), .O(led[3]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB led_pad_4 (.I(VCC_net), .O(led[4]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB led_pad_5 (.I(VCC_net), .O(led[5]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[19:22])
    OB galben_pad (.I(galben_c), .O(galben));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(8[16:22])
    OB verde_pad (.I(verde_c), .O(verde));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(7[16:21])
    OB count_semafor_pad_1 (.I(count_semafor_c_1), .O(count_semafor[1]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    IB buton_pad (.I(buton), .O(buton_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(4[11:16])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(3[11:14])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    OB count_semafor_pad_0 (.I(count_semafor_c_0), .O(count_semafor[0]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(10[19:32])
    FD1P3IX count_semafor_163__i19 (.D(n107), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i19.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(led_7__N_1[7]), .B(buton_push), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_8 (.A(count_semafor_c_22), .B(led_7__N_1[7]), .C(n2892), 
         .D(buton_push), .Z(n2945)) /* synthesis lut_function=(A (B+!(D))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i1_4_lut_adj_8.init = 16'hc8fa;
    LUT4 i2_1_lut (.A(semafor_state[0]), .Z(n17)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut.init = 16'h5555;
    LUT4 i1741_4_lut_4_lut (.A(led_7__N_1[7]), .B(count_semafor_c_0), .C(count_semafor_c_1), 
         .D(n3009), .Z(n2954)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(64[4] 107[11])
    defparam i1741_4_lut_4_lut.init = 16'hffd0;
    LUT4 i3_4_lut (.A(count_semafor_c_16), .B(count_semafor_c_17), .C(count_semafor_c_18), 
         .D(n2944), .Z(n2894)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i3_4_lut.init = 16'h8000;
    CCU2D sub_151_add_2_12 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2885), .COUT(n2886));
    defparam sub_151_add_2_12.INIT0 = 16'h5aaa;
    defparam sub_151_add_2_12.INIT1 = 16'h5555;
    defparam sub_151_add_2_12.INJECT1_0 = "NO";
    defparam sub_151_add_2_12.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(count_semafor_c_1), .B(n3009), .C(count_semafor_c_0), 
         .D(semafor_state[0]), .Z(n68)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h1300;
    LUT4 i1_2_lut_adj_9 (.A(count[31]), .B(count[25]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_9.init = 16'heeee;
    LUT4 i1750_2_lut_rep_4 (.A(slow_clk), .B(count_31__N_217), .Z(clk_c_enable_30)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam i1750_2_lut_rep_4.init = 16'h4444;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n3089)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3AY led_in_i0_i7 (.D(n3011), .SP(clk_c_enable_26), .CK(clk_c), 
            .Q(led_c_6));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam led_in_i0_i7.GSR = "ENABLED";
    clock_divider clk_div (.slow_clk(slow_clk), .clk_c(clk_c), .count({count[31:7], 
            Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, Open_6}), 
            .GND_net(GND_net), .count_31__N_217(count_31__N_217)) /* synthesis syn_module_defined=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(30[7] 35[6])
    FD1P3IX count_semafor_163__i8 (.D(n118), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i8.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i9 (.D(n117), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i9.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i20 (.D(n106), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i20.GSR = "ENABLED";
    FD1P3AX led_in_i0_i2 (.D(n3010), .SP(clk_c_enable_26), .CK(clk_c), 
            .Q(led_c_1));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam led_in_i0_i2.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(count_semafor_c_6), .B(n30), .C(count_semafor_c_7), 
         .D(count_semafor_c_3), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam i15_4_lut.init = 16'hfffe;
    FD1P3IX count_semafor_163__i21 (.D(n105), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i21.GSR = "ENABLED";
    FD1P3IX rosu_47 (.D(n3089), .SP(semafor_state[0]), .CD(n3011), .CK(slow_clk), 
            .Q(rosu_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam rosu_47.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i22 (.D(n104), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i22.GSR = "ENABLED";
    FD1P3IX count_semafor_163__i23 (.D(n103), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i23.GSR = "ENABLED";
    GSR GSR_INST (.GSR(rst_c));
    FD1P3IX count_semafor_163__i24 (.D(n102), .SP(clk_c_enable_30), .CD(n2479), 
            .CK(clk_c), .Q(count_semafor_c_23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(60[34:51])
    defparam count_semafor_163__i24.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_6 (.A(count_semafor_c_2), .B(n33), .Z(n3009)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_6.init = 16'heeee;
    LUT4 i1_3_lut_adj_10 (.A(semafor_state[0]), .B(buton_push), .C(n2809), 
         .Z(n77)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(49[18] 108[12])
    defparam i1_3_lut_adj_10.init = 16'heaea;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clock_divider
//

module clock_divider (slow_clk, clk_c, count, GND_net, count_31__N_217) /* synthesis syn_module_defined=1 */ ;
    output slow_clk;
    input clk_c;
    output [31:0]count;
    input GND_net;
    input count_31__N_217;
    
    wire slow_clk /* synthesis is_clock=1, SET_AS_NETWORK=slow_clk */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(27[7:15])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    
    wire clk_o_N_242, n2868;
    wire [31:0]n133;
    
    wire n2867, n2866, n2865, n2864, n2863, n2862, n2861, n2860, 
        n2859, n2858, n2857, n2856, n2855;
    wire [31:0]count_c;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(126[14:19])
    
    wire n2854, n2853;
    
    FD1S3AX clk_o_14 (.D(clk_o_N_242), .CK(clk_c), .Q(slow_clk)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=35 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(128[10] 132[29])
    defparam clk_o_14.GSR = "DISABLED";
    CCU2D count_164_add_4_33 (.A0(count[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2868), .S0(n133[31]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_33.INIT0 = 16'hfaaa;
    defparam count_164_add_4_33.INIT1 = 16'h0000;
    defparam count_164_add_4_33.INJECT1_0 = "NO";
    defparam count_164_add_4_33.INJECT1_1 = "NO";
    CCU2D count_164_add_4_31 (.A0(count[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2867), .COUT(n2868), .S0(n133[29]), .S1(n133[30]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_31.INIT0 = 16'hfaaa;
    defparam count_164_add_4_31.INIT1 = 16'hfaaa;
    defparam count_164_add_4_31.INJECT1_0 = "NO";
    defparam count_164_add_4_31.INJECT1_1 = "NO";
    CCU2D count_164_add_4_29 (.A0(count[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2866), .COUT(n2867), .S0(n133[27]), .S1(n133[28]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_29.INIT0 = 16'hfaaa;
    defparam count_164_add_4_29.INIT1 = 16'hfaaa;
    defparam count_164_add_4_29.INJECT1_0 = "NO";
    defparam count_164_add_4_29.INJECT1_1 = "NO";
    CCU2D count_164_add_4_27 (.A0(count[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2865), .COUT(n2866), .S0(n133[25]), .S1(n133[26]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_27.INIT0 = 16'hfaaa;
    defparam count_164_add_4_27.INIT1 = 16'hfaaa;
    defparam count_164_add_4_27.INJECT1_0 = "NO";
    defparam count_164_add_4_27.INJECT1_1 = "NO";
    CCU2D count_164_add_4_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2864), .COUT(n2865), .S0(n133[23]), .S1(n133[24]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_25.INIT0 = 16'hfaaa;
    defparam count_164_add_4_25.INIT1 = 16'hfaaa;
    defparam count_164_add_4_25.INJECT1_0 = "NO";
    defparam count_164_add_4_25.INJECT1_1 = "NO";
    CCU2D count_164_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2863), .COUT(n2864), .S0(n133[21]), .S1(n133[22]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_23.INIT0 = 16'hfaaa;
    defparam count_164_add_4_23.INIT1 = 16'hfaaa;
    defparam count_164_add_4_23.INJECT1_0 = "NO";
    defparam count_164_add_4_23.INJECT1_1 = "NO";
    CCU2D count_164_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2862), .COUT(n2863), .S0(n133[19]), .S1(n133[20]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_21.INIT0 = 16'hfaaa;
    defparam count_164_add_4_21.INIT1 = 16'hfaaa;
    defparam count_164_add_4_21.INJECT1_0 = "NO";
    defparam count_164_add_4_21.INJECT1_1 = "NO";
    CCU2D count_164_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2861), .COUT(n2862), .S0(n133[17]), .S1(n133[18]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_19.INIT0 = 16'hfaaa;
    defparam count_164_add_4_19.INIT1 = 16'hfaaa;
    defparam count_164_add_4_19.INJECT1_0 = "NO";
    defparam count_164_add_4_19.INJECT1_1 = "NO";
    CCU2D count_164_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2860), .COUT(n2861), .S0(n133[15]), .S1(n133[16]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_17.INIT0 = 16'hfaaa;
    defparam count_164_add_4_17.INIT1 = 16'hfaaa;
    defparam count_164_add_4_17.INJECT1_0 = "NO";
    defparam count_164_add_4_17.INJECT1_1 = "NO";
    CCU2D count_164_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2859), .COUT(n2860), .S0(n133[13]), .S1(n133[14]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_15.INIT0 = 16'hfaaa;
    defparam count_164_add_4_15.INIT1 = 16'hfaaa;
    defparam count_164_add_4_15.INJECT1_0 = "NO";
    defparam count_164_add_4_15.INJECT1_1 = "NO";
    CCU2D count_164_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2858), .COUT(n2859), .S0(n133[11]), .S1(n133[12]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_13.INIT0 = 16'hfaaa;
    defparam count_164_add_4_13.INIT1 = 16'hfaaa;
    defparam count_164_add_4_13.INJECT1_0 = "NO";
    defparam count_164_add_4_13.INJECT1_1 = "NO";
    CCU2D count_164_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2857), .COUT(n2858), .S0(n133[9]), .S1(n133[10]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_11.INIT0 = 16'hfaaa;
    defparam count_164_add_4_11.INIT1 = 16'hfaaa;
    defparam count_164_add_4_11.INJECT1_0 = "NO";
    defparam count_164_add_4_11.INJECT1_1 = "NO";
    CCU2D count_164_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2856), .COUT(n2857), .S0(n133[7]), .S1(n133[8]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_9.INIT0 = 16'hfaaa;
    defparam count_164_add_4_9.INIT1 = 16'hfaaa;
    defparam count_164_add_4_9.INJECT1_0 = "NO";
    defparam count_164_add_4_9.INJECT1_1 = "NO";
    CCU2D count_164_add_4_7 (.A0(count_c[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_c[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2855), .COUT(n2856), .S0(n133[5]), .S1(n133[6]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_7.INIT0 = 16'hfaaa;
    defparam count_164_add_4_7.INIT1 = 16'hfaaa;
    defparam count_164_add_4_7.INJECT1_0 = "NO";
    defparam count_164_add_4_7.INJECT1_1 = "NO";
    CCU2D count_164_add_4_5 (.A0(count_c[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_c[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2854), .COUT(n2855), .S0(n133[3]), .S1(n133[4]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_5.INIT0 = 16'hfaaa;
    defparam count_164_add_4_5.INIT1 = 16'hfaaa;
    defparam count_164_add_4_5.INJECT1_0 = "NO";
    defparam count_164_add_4_5.INJECT1_1 = "NO";
    CCU2D count_164_add_4_3 (.A0(count_c[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_c[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2853), .COUT(n2854), .S0(n133[1]), .S1(n133[2]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_3.INIT0 = 16'hfaaa;
    defparam count_164_add_4_3.INIT1 = 16'hfaaa;
    defparam count_164_add_4_3.INJECT1_0 = "NO";
    defparam count_164_add_4_3.INJECT1_1 = "NO";
    CCU2D count_164_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_c[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2853), .S1(n133[0]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164_add_4_1.INIT0 = 16'hF000;
    defparam count_164_add_4_1.INIT1 = 16'h0555;
    defparam count_164_add_4_1.INJECT1_0 = "NO";
    defparam count_164_add_4_1.INJECT1_1 = "NO";
    FD1S3IX count_164__i0 (.D(n133[0]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count_c[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i0.GSR = "DISABLED";
    FD1S3IX count_164__i31 (.D(n133[31]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i31.GSR = "DISABLED";
    FD1S3IX count_164__i30 (.D(n133[30]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i30.GSR = "DISABLED";
    FD1S3IX count_164__i29 (.D(n133[29]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i29.GSR = "DISABLED";
    FD1S3IX count_164__i28 (.D(n133[28]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i28.GSR = "DISABLED";
    FD1S3IX count_164__i27 (.D(n133[27]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i27.GSR = "DISABLED";
    FD1S3IX count_164__i26 (.D(n133[26]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i26.GSR = "DISABLED";
    FD1S3IX count_164__i25 (.D(n133[25]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i25.GSR = "DISABLED";
    FD1S3IX count_164__i24 (.D(n133[24]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i24.GSR = "DISABLED";
    FD1S3IX count_164__i23 (.D(n133[23]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i23.GSR = "DISABLED";
    FD1S3IX count_164__i22 (.D(n133[22]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i22.GSR = "DISABLED";
    FD1S3IX count_164__i21 (.D(n133[21]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i21.GSR = "DISABLED";
    FD1S3IX count_164__i20 (.D(n133[20]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i20.GSR = "DISABLED";
    FD1S3IX count_164__i19 (.D(n133[19]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i19.GSR = "DISABLED";
    FD1S3IX count_164__i18 (.D(n133[18]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i18.GSR = "DISABLED";
    FD1S3IX count_164__i17 (.D(n133[17]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i17.GSR = "DISABLED";
    FD1S3IX count_164__i16 (.D(n133[16]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i16.GSR = "DISABLED";
    FD1S3IX count_164__i15 (.D(n133[15]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i15.GSR = "DISABLED";
    FD1S3IX count_164__i14 (.D(n133[14]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i14.GSR = "DISABLED";
    FD1S3IX count_164__i13 (.D(n133[13]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i13.GSR = "DISABLED";
    FD1S3IX count_164__i12 (.D(n133[12]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i12.GSR = "DISABLED";
    FD1S3IX count_164__i11 (.D(n133[11]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i11.GSR = "DISABLED";
    FD1S3IX count_164__i10 (.D(n133[10]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i10.GSR = "DISABLED";
    FD1S3IX count_164__i9 (.D(n133[9]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i9.GSR = "DISABLED";
    FD1S3IX count_164__i8 (.D(n133[8]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i8.GSR = "DISABLED";
    FD1S3IX count_164__i7 (.D(n133[7]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i7.GSR = "DISABLED";
    FD1S3IX count_164__i6 (.D(n133[6]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count_c[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i6.GSR = "DISABLED";
    FD1S3IX count_164__i5 (.D(n133[5]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count_c[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i5.GSR = "DISABLED";
    FD1S3IX count_164__i4 (.D(n133[4]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i4.GSR = "DISABLED";
    FD1S3IX count_164__i3 (.D(n133[3]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i3.GSR = "DISABLED";
    FD1S3IX count_164__i2 (.D(n133[2]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i2.GSR = "DISABLED";
    FD1S3IX count_164__i1 (.D(n133[1]), .CK(clk_c), .CD(count_31__N_217), 
            .Q(count_c[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[21:28])
    defparam count_164__i1.GSR = "DISABLED";
    LUT4 clk_o_I_0_2_lut (.A(slow_clk), .B(count_31__N_217), .Z(clk_o_N_242)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(132[14:29])
    defparam clk_o_I_0_2_lut.init = 16'h6666;
    
endmodule
