// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Jan 11 16:38:46 2025
//
// Verilog Description of module traffic_light_controller
//

module traffic_light_controller (clk, rst_n, ped_button, car_light, 
            ped_light) /* synthesis syn_module_defined=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(1[8:32])
    input clk;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    input rst_n;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(3[11:16])
    input ped_button;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(4[11:21])
    output [1:0]car_light;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(5[22:31])
    output ped_light;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(6[16:25])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    wire slow_clk /* synthesis is_clock=1, SET_AS_NETWORK=slow_clk */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(11[10:18])
    
    wire GND_net, VCC_net, rst_n_c, ped_button_c, car_light_c_1;
    wire [1:0]car_light_c1;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(5[22:31])
    
    wire ped_light_c;
    wire [5:0]car_timer;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(9[15:24])
    
    wire ped_request, n6, n6_adj_136;
    wire [1:0]car_light_1__N_1;
    
    wire n1701, ped_request_N_39;
    wire [31:0]count;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(81[16:21])
    
    wire n1868, count_31__N_110, clk_c_enable_7, n1702, n1867, n6_adj_137, 
        n1864, n11, car_light_c, n330, n9, n18, n4, n14, n1775, 
        n1774, n1773, n1772, n1771, n1770, n1769, n1768, n1767, 
        n1766, n1765, n1764, n30, n31, n32, n33, n34, n35, 
        n1832, n10, n9_adj_138, n1869, n1866, n1828, n1827, clk_c_enable_8, 
        n1;
    
    VHI i998 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(n330), .B(n9_adj_138), .C(n14), .D(n10), .Z(count_31__N_110)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(car_timer[3]), .B(car_timer[0]), .C(car_timer[4]), 
         .D(n6), .Z(n9)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i4_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_9 (.A(car_timer[4]), .B(car_timer[3]), .Z(n1869)) /* synthesis lut_function=(A (B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i1_2_lut_rep_9.init = 16'h8888;
    LUT4 ped_button_I_0_2_lut (.A(ped_button_c), .B(ped_light_c), .Z(ped_request_N_39)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(62[17:48])
    defparam ped_button_I_0_2_lut.init = 16'h2222;
    OB car_light_pad_0 (.I(car_light_c), .O(car_light[0]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(5[22:31])
    LUT4 i2_2_lut_rep_7_3_lut (.A(car_timer[4]), .B(car_timer[3]), .C(car_timer[0]), 
         .Z(n1867)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i2_2_lut_rep_7_3_lut.init = 16'h0808;
    LUT4 i1_2_lut (.A(count[31]), .B(count[25]), .Z(n9_adj_138)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX ped_request_37 (.D(n1701), .CK(slow_clk), .Q(ped_request));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam ped_request_37.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(car_timer[0]), .B(n1869), .C(car_light_c1[0]), 
         .D(car_light_c_1), .Z(n4)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0040;
    FD1P3AX car_light_i0_i0 (.D(car_light_1__N_1[0]), .SP(clk_c_enable_8), 
            .CK(clk_c), .Q(car_light_c1[0]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam car_light_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_3 (.A(car_timer[5]), .B(car_timer[2]), .Z(n1832)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_3.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_6_3_lut_4_lut (.A(car_timer[4]), .B(car_timer[3]), 
         .C(car_light_c_1), .D(car_timer[0]), .Z(n1866)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i1_2_lut_rep_6_3_lut_4_lut.init = 16'h0008;
    OB car_light_pad_1 (.I(car_light_c_1), .O(car_light[1]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(5[22:31])
    FD1S3AX ped_light_35 (.D(n1868), .CK(slow_clk), .Q(ped_light_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam ped_light_35.GSR = "ENABLED";
    FD1P3IX car_timer_113__i1 (.D(n34), .SP(clk_c_enable_7), .CD(n1702), 
            .CK(clk_c), .Q(car_timer[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113__i1.GSR = "ENABLED";
    FD1P3IX car_timer_113__i4 (.D(n31), .SP(clk_c_enable_7), .CD(n1702), 
            .CK(clk_c), .Q(car_timer[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113__i4.GSR = "ENABLED";
    FD1P3IX car_timer_113__i2 (.D(n33), .SP(clk_c_enable_7), .CD(n1702), 
            .CK(clk_c), .Q(car_timer[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113__i2.GSR = "ENABLED";
    FD1P3IX car_timer_113__i3 (.D(n32), .SP(clk_c_enable_7), .CD(n1702), 
            .CK(clk_c), .Q(car_timer[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113__i3.GSR = "ENABLED";
    FD1P3IX car_timer_113__i0 (.D(n35), .SP(clk_c_enable_7), .CD(n1702), 
            .CK(clk_c), .Q(car_timer[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_4 (.A(car_timer[1]), .B(car_timer[0]), .Z(n6_adj_136)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_4.init = 16'hdddd;
    FD1P3IX car_timer_113__i5 (.D(n30), .SP(clk_c_enable_7), .CD(n1702), 
            .CK(clk_c), .Q(car_timer[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113__i5.GSR = "ENABLED";
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 i4_4_lut_adj_5 (.A(car_timer[0]), .B(n1832), .C(car_timer[3]), 
         .D(n6_adj_137), .Z(n11)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(40[25:40])
    defparam i4_4_lut_adj_5.init = 16'hfffd;
    LUT4 i1_1_lut_rep_8 (.A(car_light_c1[0]), .Z(n1868)) /* synthesis lut_function=(!(A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam i1_1_lut_rep_8.init = 16'h5555;
    LUT4 i2_4_lut (.A(slow_clk), .B(count_31__N_110), .C(n18), .D(car_timer[2]), 
         .Z(n1702)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i2_4_lut.init = 16'h4000;
    LUT4 i987_3_lut_4_lut_4_lut (.A(car_light_c1[0]), .B(car_light_c_1), 
         .C(count_31__N_110), .D(slow_clk), .Z(clk_c_enable_7)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam i987_3_lut_4_lut_4_lut.init = 16'h00b0;
    LUT4 i1_2_lut_adj_6 (.A(car_timer[1]), .B(ped_request), .Z(n1827)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_6.init = 16'h4444;
    LUT4 i1_2_lut_adj_7 (.A(car_timer[1]), .B(car_timer[4]), .Z(n6_adj_137)) /* synthesis lut_function=(A+(B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(40[25:40])
    defparam i1_2_lut_adj_7.init = 16'heeee;
    LUT4 i31_4_lut (.A(n1864), .B(n1827), .C(car_timer[5]), .D(n4), 
         .Z(n18)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i31_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_adj_8 (.A(car_light_c_1), .B(car_timer[1]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam i1_2_lut_adj_8.init = 16'h2222;
    LUT4 i901_4_lut (.A(n1828), .B(car_light_c1[0]), .C(n11), .D(car_light_c_1), 
         .Z(car_light_1__N_1[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(30[13] 52[20])
    defparam i901_4_lut.init = 16'hc088;
    LUT4 i71_2_lut (.A(car_light_c1[0]), .B(car_light_c_1), .Z(car_light_c)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i71_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(n1867), .B(car_timer[5]), .C(car_timer[2]), .D(n1827), 
         .Z(n1828)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i900_4_lut (.A(n1869), .B(car_light_c1[0]), .C(n1832), .D(n6_adj_136), 
         .Z(n1)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(30[13] 52[20])
    defparam i900_4_lut.init = 16'hccce;
    VLO i1 (.Z(GND_net));
    LUT4 i869_4_lut (.A(car_light_c1[0]), .B(ped_request_N_39), .C(ped_request), 
         .D(car_light_c_1), .Z(n1701)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam i869_4_lut.init = 16'hfcdc;
    LUT4 i6_4_lut (.A(count[28]), .B(count[30]), .C(count[26]), .D(count[24]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D sub_104_add_2_20 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1775), .S1(n330));
    defparam sub_104_add_2_20.INIT0 = 16'h5555;
    defparam sub_104_add_2_20.INIT1 = 16'h0000;
    defparam sub_104_add_2_20.INJECT1_0 = "NO";
    defparam sub_104_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_104_add_2_18 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1774), .COUT(n1775));
    defparam sub_104_add_2_18.INIT0 = 16'h5555;
    defparam sub_104_add_2_18.INIT1 = 16'h5555;
    defparam sub_104_add_2_18.INJECT1_0 = "NO";
    defparam sub_104_add_2_18.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    IB ped_button_pad (.I(ped_button), .O(ped_button_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(4[11:21])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(3[11:16])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    OB ped_light_pad (.I(ped_light_c), .O(ped_light));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(6[16:25])
    CCU2D sub_104_add_2_16 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1773), .COUT(n1774));
    defparam sub_104_add_2_16.INIT0 = 16'h5555;
    defparam sub_104_add_2_16.INIT1 = 16'h5aaa;
    defparam sub_104_add_2_16.INJECT1_0 = "NO";
    defparam sub_104_add_2_16.INJECT1_1 = "NO";
    clock_divider clk_div (.count({Open_0, Open_1, Open_2, Open_3, Open_4, 
            Open_5, Open_6, count[24:5], Open_7, Open_8, Open_9, 
            Open_10, Open_11}), .GND_net(GND_net), .slow_clk(slow_clk), 
            .clk_c(clk_c), .count_31__N_110(count_31__N_110), .\count[31] (count[31]), 
            .\count[30] (count[30]), .\count[29] (count[29]), .\count[28] (count[28]), 
            .\count[27] (count[27]), .\count[26] (count[26]), .\count[25] (count[25])) /* synthesis syn_module_defined=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(15[7] 20[6])
    LUT4 i985_2_lut_rep_5 (.A(slow_clk), .B(count_31__N_110), .Z(clk_c_enable_8)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam i985_2_lut_rep_5.init = 16'h4444;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 car_timer_1__bdd_4_lut (.A(car_timer[1]), .B(n1866), .C(n9), 
         .D(car_light_c1[0]), .Z(n1864)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam car_timer_1__bdd_4_lut.init = 16'hf088;
    CCU2D sub_104_add_2_14 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1772), .COUT(n1773));
    defparam sub_104_add_2_14.INIT0 = 16'h5aaa;
    defparam sub_104_add_2_14.INIT1 = 16'h5aaa;
    defparam sub_104_add_2_14.INJECT1_0 = "NO";
    defparam sub_104_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_104_add_2_12 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1771), .COUT(n1772));
    defparam sub_104_add_2_12.INIT0 = 16'h5aaa;
    defparam sub_104_add_2_12.INIT1 = 16'h5555;
    defparam sub_104_add_2_12.INJECT1_0 = "NO";
    defparam sub_104_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_104_add_2_10 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1770), .COUT(n1771));
    defparam sub_104_add_2_10.INIT0 = 16'h5aaa;
    defparam sub_104_add_2_10.INIT1 = 16'h5aaa;
    defparam sub_104_add_2_10.INJECT1_0 = "NO";
    defparam sub_104_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_104_add_2_8 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1769), .COUT(n1770));
    defparam sub_104_add_2_8.INIT0 = 16'h5555;
    defparam sub_104_add_2_8.INIT1 = 16'h5555;
    defparam sub_104_add_2_8.INJECT1_0 = "NO";
    defparam sub_104_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_104_add_2_6 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1768), .COUT(n1769));
    defparam sub_104_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_104_add_2_6.INIT1 = 16'h5555;
    defparam sub_104_add_2_6.INJECT1_0 = "NO";
    defparam sub_104_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_104_add_2_4 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1767), .COUT(n1768));
    defparam sub_104_add_2_4.INIT0 = 16'h5555;
    defparam sub_104_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_104_add_2_4.INJECT1_0 = "NO";
    defparam sub_104_add_2_4.INJECT1_1 = "NO";
    FD1P3AX car_light_i0_i1 (.D(car_light_1__N_1[1]), .SP(clk_c_enable_8), 
            .CK(clk_c), .Q(car_light_c_1));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(28[18] 67[12])
    defparam car_light_i0_i1.GSR = "ENABLED";
    CCU2D sub_104_add_2_2 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1767));
    defparam sub_104_add_2_2.INIT0 = 16'h5000;
    defparam sub_104_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_104_add_2_2.INJECT1_0 = "NO";
    defparam sub_104_add_2_2.INJECT1_1 = "NO";
    CCU2D car_timer_113_add_4_7 (.A0(car_timer[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1766), .S0(n30));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113_add_4_7.INIT0 = 16'hfaaa;
    defparam car_timer_113_add_4_7.INIT1 = 16'h0000;
    defparam car_timer_113_add_4_7.INJECT1_0 = "NO";
    defparam car_timer_113_add_4_7.INJECT1_1 = "NO";
    CCU2D car_timer_113_add_4_5 (.A0(car_timer[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(car_timer[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1765), .COUT(n1766), .S0(n32), .S1(n31));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113_add_4_5.INIT0 = 16'hfaaa;
    defparam car_timer_113_add_4_5.INIT1 = 16'hfaaa;
    defparam car_timer_113_add_4_5.INJECT1_0 = "NO";
    defparam car_timer_113_add_4_5.INJECT1_1 = "NO";
    CCU2D car_timer_113_add_4_3 (.A0(car_timer[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(car_timer[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1764), .COUT(n1765), .S0(n34), .S1(n33));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113_add_4_3.INIT0 = 16'hfaaa;
    defparam car_timer_113_add_4_3.INIT1 = 16'hfaaa;
    defparam car_timer_113_add_4_3.INJECT1_0 = "NO";
    defparam car_timer_113_add_4_3.INJECT1_1 = "NO";
    CCU2D car_timer_113_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(car_timer[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1764), .S1(n35));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(46[34:47])
    defparam car_timer_113_add_4_1.INIT0 = 16'hF000;
    defparam car_timer_113_add_4_1.INIT1 = 16'h0555;
    defparam car_timer_113_add_4_1.INJECT1_0 = "NO";
    defparam car_timer_113_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(count[29]), .B(count[27]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 n11_bdd_4_lut (.A(n11), .B(car_light_c1[0]), .C(n1), .D(car_light_c_1), 
         .Z(car_light_1__N_1[0])) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n11_bdd_4_lut.init = 16'h88f0;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clock_divider
//

module clock_divider (count, GND_net, slow_clk, clk_c, count_31__N_110, 
            \count[31] , \count[30] , \count[29] , \count[28] , \count[27] , 
            \count[26] , \count[25] ) /* synthesis syn_module_defined=1 */ ;
    output [31:0]count;
    input GND_net;
    output slow_clk;
    input clk_c;
    input count_31__N_110;
    output \count[31] ;
    output \count[30] ;
    output \count[29] ;
    output \count[28] ;
    output \count[27] ;
    output \count[26] ;
    output \count[25] ;
    
    wire slow_clk /* synthesis is_clock=1, SET_AS_NETWORK=slow_clk */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(11[10:18])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(2[11:14])
    
    wire n1758;
    wire [31:0]n133;
    
    wire n1759, clk_o_N_135, n1757, n1756, n1755, n1754, n1753;
    wire [31:0]count_c;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(81[16:21])
    
    wire n1752, n1751, n1750, n1749, n1748, n1763, n1762, n1761, 
        n1760;
    
    CCU2D count_114_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1758), .COUT(n1759), .S0(n133[21]), .S1(n133[22]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_23.INIT0 = 16'hfaaa;
    defparam count_114_add_4_23.INIT1 = 16'hfaaa;
    defparam count_114_add_4_23.INJECT1_0 = "NO";
    defparam count_114_add_4_23.INJECT1_1 = "NO";
    FD1S3AX clk_o_16 (.D(clk_o_N_135), .CK(clk_c), .Q(slow_clk)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=15, LSE_RLINE=20 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(87[18] 94[12])
    defparam clk_o_16.GSR = "ENABLED";
    CCU2D count_114_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1757), .COUT(n1758), .S0(n133[19]), .S1(n133[20]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_21.INIT0 = 16'hfaaa;
    defparam count_114_add_4_21.INIT1 = 16'hfaaa;
    defparam count_114_add_4_21.INJECT1_0 = "NO";
    defparam count_114_add_4_21.INJECT1_1 = "NO";
    CCU2D count_114_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1756), .COUT(n1757), .S0(n133[17]), .S1(n133[18]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_19.INIT0 = 16'hfaaa;
    defparam count_114_add_4_19.INIT1 = 16'hfaaa;
    defparam count_114_add_4_19.INJECT1_0 = "NO";
    defparam count_114_add_4_19.INJECT1_1 = "NO";
    CCU2D count_114_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1755), .COUT(n1756), .S0(n133[15]), .S1(n133[16]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_17.INIT0 = 16'hfaaa;
    defparam count_114_add_4_17.INIT1 = 16'hfaaa;
    defparam count_114_add_4_17.INJECT1_0 = "NO";
    defparam count_114_add_4_17.INJECT1_1 = "NO";
    CCU2D count_114_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1754), .COUT(n1755), .S0(n133[13]), .S1(n133[14]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_15.INIT0 = 16'hfaaa;
    defparam count_114_add_4_15.INIT1 = 16'hfaaa;
    defparam count_114_add_4_15.INJECT1_0 = "NO";
    defparam count_114_add_4_15.INJECT1_1 = "NO";
    CCU2D count_114_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1753), .COUT(n1754), .S0(n133[11]), .S1(n133[12]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_13.INIT0 = 16'hfaaa;
    defparam count_114_add_4_13.INIT1 = 16'hfaaa;
    defparam count_114_add_4_13.INJECT1_0 = "NO";
    defparam count_114_add_4_13.INJECT1_1 = "NO";
    FD1S3IX count_114__i24 (.D(n133[24]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i24.GSR = "ENABLED";
    FD1S3IX count_114__i23 (.D(n133[23]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i23.GSR = "ENABLED";
    FD1S3IX count_114__i22 (.D(n133[22]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i22.GSR = "ENABLED";
    FD1S3IX count_114__i21 (.D(n133[21]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i21.GSR = "ENABLED";
    FD1S3IX count_114__i20 (.D(n133[20]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i20.GSR = "ENABLED";
    FD1S3IX count_114__i19 (.D(n133[19]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i19.GSR = "ENABLED";
    FD1S3IX count_114__i18 (.D(n133[18]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i18.GSR = "ENABLED";
    FD1S3IX count_114__i17 (.D(n133[17]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i17.GSR = "ENABLED";
    FD1S3IX count_114__i16 (.D(n133[16]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i16.GSR = "ENABLED";
    FD1S3IX count_114__i15 (.D(n133[15]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i15.GSR = "ENABLED";
    FD1S3IX count_114__i14 (.D(n133[14]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i14.GSR = "ENABLED";
    FD1S3IX count_114__i13 (.D(n133[13]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i13.GSR = "ENABLED";
    FD1S3IX count_114__i12 (.D(n133[12]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i12.GSR = "ENABLED";
    FD1S3IX count_114__i11 (.D(n133[11]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i11.GSR = "ENABLED";
    FD1S3IX count_114__i10 (.D(n133[10]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i10.GSR = "ENABLED";
    FD1S3IX count_114__i9 (.D(n133[9]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i9.GSR = "ENABLED";
    FD1S3IX count_114__i8 (.D(n133[8]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i8.GSR = "ENABLED";
    FD1S3IX count_114__i7 (.D(n133[7]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i7.GSR = "ENABLED";
    FD1S3IX count_114__i6 (.D(n133[6]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i6.GSR = "ENABLED";
    FD1S3IX count_114__i5 (.D(n133[5]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i5.GSR = "ENABLED";
    FD1S3IX count_114__i4 (.D(n133[4]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i4.GSR = "ENABLED";
    FD1S3IX count_114__i3 (.D(n133[3]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i3.GSR = "ENABLED";
    FD1S3IX count_114__i2 (.D(n133[2]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i2.GSR = "ENABLED";
    FD1S3IX count_114__i1 (.D(n133[1]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count_c[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i1.GSR = "ENABLED";
    FD1S3IX count_114__i0 (.D(n133[0]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(count_c[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i0.GSR = "ENABLED";
    CCU2D count_114_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1752), .COUT(n1753), .S0(n133[9]), .S1(n133[10]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_11.INIT0 = 16'hfaaa;
    defparam count_114_add_4_11.INIT1 = 16'hfaaa;
    defparam count_114_add_4_11.INJECT1_0 = "NO";
    defparam count_114_add_4_11.INJECT1_1 = "NO";
    LUT4 clk_o_I_0_2_lut (.A(slow_clk), .B(count_31__N_110), .Z(clk_o_N_135)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(91[22] 93[16])
    defparam clk_o_I_0_2_lut.init = 16'h6666;
    FD1S3IX count_114__i31 (.D(n133[31]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(\count[31] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i31.GSR = "ENABLED";
    CCU2D count_114_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1751), .COUT(n1752), .S0(n133[7]), .S1(n133[8]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_9.INIT0 = 16'hfaaa;
    defparam count_114_add_4_9.INIT1 = 16'hfaaa;
    defparam count_114_add_4_9.INJECT1_0 = "NO";
    defparam count_114_add_4_9.INJECT1_1 = "NO";
    CCU2D count_114_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1750), .COUT(n1751), .S0(n133[5]), .S1(n133[6]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_7.INIT0 = 16'hfaaa;
    defparam count_114_add_4_7.INIT1 = 16'hfaaa;
    defparam count_114_add_4_7.INJECT1_0 = "NO";
    defparam count_114_add_4_7.INJECT1_1 = "NO";
    CCU2D count_114_add_4_5 (.A0(count_c[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_c[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1749), .COUT(n1750), .S0(n133[3]), .S1(n133[4]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_5.INIT0 = 16'hfaaa;
    defparam count_114_add_4_5.INIT1 = 16'hfaaa;
    defparam count_114_add_4_5.INJECT1_0 = "NO";
    defparam count_114_add_4_5.INJECT1_1 = "NO";
    CCU2D count_114_add_4_3 (.A0(count_c[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_c[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1748), .COUT(n1749), .S0(n133[1]), .S1(n133[2]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_3.INIT0 = 16'hfaaa;
    defparam count_114_add_4_3.INIT1 = 16'hfaaa;
    defparam count_114_add_4_3.INJECT1_0 = "NO";
    defparam count_114_add_4_3.INJECT1_1 = "NO";
    CCU2D count_114_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_c[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1748), .S1(n133[0]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_1.INIT0 = 16'hF000;
    defparam count_114_add_4_1.INIT1 = 16'h0555;
    defparam count_114_add_4_1.INJECT1_0 = "NO";
    defparam count_114_add_4_1.INJECT1_1 = "NO";
    FD1S3IX count_114__i30 (.D(n133[30]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(\count[30] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i30.GSR = "ENABLED";
    FD1S3IX count_114__i29 (.D(n133[29]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(\count[29] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i29.GSR = "ENABLED";
    FD1S3IX count_114__i28 (.D(n133[28]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(\count[28] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i28.GSR = "ENABLED";
    FD1S3IX count_114__i27 (.D(n133[27]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(\count[27] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i27.GSR = "ENABLED";
    FD1S3IX count_114__i26 (.D(n133[26]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(\count[26] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i26.GSR = "ENABLED";
    FD1S3IX count_114__i25 (.D(n133[25]), .CK(clk_c), .CD(count_31__N_110), 
            .Q(\count[25] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114__i25.GSR = "ENABLED";
    CCU2D count_114_add_4_33 (.A0(\count[31] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1763), .S0(n133[31]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_33.INIT0 = 16'hfaaa;
    defparam count_114_add_4_33.INIT1 = 16'h0000;
    defparam count_114_add_4_33.INJECT1_0 = "NO";
    defparam count_114_add_4_33.INJECT1_1 = "NO";
    CCU2D count_114_add_4_31 (.A0(\count[29] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\count[30] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1762), .COUT(n1763), .S0(n133[29]), .S1(n133[30]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_31.INIT0 = 16'hfaaa;
    defparam count_114_add_4_31.INIT1 = 16'hfaaa;
    defparam count_114_add_4_31.INJECT1_0 = "NO";
    defparam count_114_add_4_31.INJECT1_1 = "NO";
    CCU2D count_114_add_4_29 (.A0(\count[27] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\count[28] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1761), .COUT(n1762), .S0(n133[27]), .S1(n133[28]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_29.INIT0 = 16'hfaaa;
    defparam count_114_add_4_29.INIT1 = 16'hfaaa;
    defparam count_114_add_4_29.INJECT1_0 = "NO";
    defparam count_114_add_4_29.INJECT1_1 = "NO";
    CCU2D count_114_add_4_27 (.A0(\count[25] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\count[26] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1760), .COUT(n1761), .S0(n133[25]), .S1(n133[26]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_27.INIT0 = 16'hfaaa;
    defparam count_114_add_4_27.INIT1 = 16'hfaaa;
    defparam count_114_add_4_27.INJECT1_0 = "NO";
    defparam count_114_add_4_27.INJECT1_1 = "NO";
    CCU2D count_114_add_4_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1759), .COUT(n1760), .S0(n133[23]), .S1(n133[24]));   // c:/facultate anul 3/proiect electronica digitala/semafor_variantab/semafor/counter.v(92[26:35])
    defparam count_114_add_4_25.INIT0 = 16'hfaaa;
    defparam count_114_add_4_25.INIT1 = 16'hfaaa;
    defparam count_114_add_4_25.INJECT1_0 = "NO";
    defparam count_114_add_4_25.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

