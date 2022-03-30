
// ## AUTOGENERATED; DO NOT MODIFY
// ## num_rows_p = 8
// ## num_cols_p = 8
// ## num_dly_p = 8


module bsg_rp_clk_gen_osc_v3_row
 (input    async_reset_neg_i
  , input  async_set_neg_i
  , input  clkgate_i
  , input  clkdly_i
  , input  clkfb_i
  , input  ctl_i
  , output clk_o
  );

  wire ctl_r;
  DFCSNQD1BWP7T30P140ULVT D0 (.Q(ctl_r), .CP(clkgate_i), .D(ctl_i), .CDN(async_reset_neg_i), .SDN(async_set_neg_i));

  wire ctl_en;
  CKND2D1BWP7T30P140ULVT N0 (.ZN(ctl_en), .A1(clkdly_i), .A2(ctl_r));

  wire hibit;
  TIEHBWP7T30P140ULVT T0 (.Z(hibit));
  wire lobit;
  TIELBWP7T30P140ULVT T1 (.ZN(lobit));

  wire fb;
  CKND2D1BWP7T30P140ULVT N1 (.ZN(fb), .A1(clkfb_i), .A2(hibit));
  CKND2D1BWP7T30P140ULVT N2 (.ZN(clk_o), .A1(fb), .A2(ctl_en));

endmodule


module bsg_rp_clk_gen_osc_v3_col
  (input async_reset_i
   , input clkgate_i
   , input clkdly_i
   , input clkfb_i
   , input [8-1:0] ctl_one_hot_i
   , output clk_o
   );

  wire hibit;
  TIEHBWP7T30P140ULVT T0 (.Z(hibit));
  wire lobit;
  TIELBWP7T30P140ULVT T1 (.ZN(lobit));

  wire clkgate_inv;
  CKND1BWP7T30P140ULVT I0 (.ZN(clkgate_inv), .I(clkgate_i));

  wire clkdly_inv;
  CKND1BWP7T30P140ULVT I1 (.ZN(clkdly_inv), .I(clkdly_i));

  wire async_reset_neg;
  INVD1BWP7T30P140ULVT I2 (.ZN(async_reset_neg), .I(async_reset_i));

  wire [8:0] clkfb;
  assign clkfb[0] = clkfb_i;

  wire [8-1:0] async_reset_neg_li, async_set_neg_li;


      assign async_reset_neg_li[0] = hibit;
      assign async_set_neg_li[0]   = async_reset_neg;
    

      bsg_rp_clk_gen_osc_v3_row row_0
        (.async_reset_neg_i(async_reset_neg_li[0])
         ,.async_set_neg_i(async_set_neg_li[0])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[0])
         ,.ctl_i(ctl_one_hot_i[0])
         ,.clk_o(clkfb[1])
         );


      assign async_reset_neg_li[1] = async_reset_neg;
      assign async_set_neg_li[1]   = hibit;
    

      bsg_rp_clk_gen_osc_v3_row row_1
        (.async_reset_neg_i(async_reset_neg_li[1])
         ,.async_set_neg_i(async_set_neg_li[1])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[1])
         ,.ctl_i(ctl_one_hot_i[1])
         ,.clk_o(clkfb[2])
         );


      assign async_reset_neg_li[2] = async_reset_neg;
      assign async_set_neg_li[2]   = hibit;
    

      bsg_rp_clk_gen_osc_v3_row row_2
        (.async_reset_neg_i(async_reset_neg_li[2])
         ,.async_set_neg_i(async_set_neg_li[2])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[2])
         ,.ctl_i(ctl_one_hot_i[2])
         ,.clk_o(clkfb[3])
         );


      assign async_reset_neg_li[3] = async_reset_neg;
      assign async_set_neg_li[3]   = hibit;
    

      bsg_rp_clk_gen_osc_v3_row row_3
        (.async_reset_neg_i(async_reset_neg_li[3])
         ,.async_set_neg_i(async_set_neg_li[3])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[3])
         ,.ctl_i(ctl_one_hot_i[3])
         ,.clk_o(clkfb[4])
         );


      assign async_reset_neg_li[4] = async_reset_neg;
      assign async_set_neg_li[4]   = hibit;
    

      bsg_rp_clk_gen_osc_v3_row row_4
        (.async_reset_neg_i(async_reset_neg_li[4])
         ,.async_set_neg_i(async_set_neg_li[4])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[4])
         ,.ctl_i(ctl_one_hot_i[4])
         ,.clk_o(clkfb[5])
         );


      assign async_reset_neg_li[5] = async_reset_neg;
      assign async_set_neg_li[5]   = hibit;
    

      bsg_rp_clk_gen_osc_v3_row row_5
        (.async_reset_neg_i(async_reset_neg_li[5])
         ,.async_set_neg_i(async_set_neg_li[5])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[5])
         ,.ctl_i(ctl_one_hot_i[5])
         ,.clk_o(clkfb[6])
         );


      assign async_reset_neg_li[6] = async_reset_neg;
      assign async_set_neg_li[6]   = hibit;
    

      bsg_rp_clk_gen_osc_v3_row row_6
        (.async_reset_neg_i(async_reset_neg_li[6])
         ,.async_set_neg_i(async_set_neg_li[6])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[6])
         ,.ctl_i(ctl_one_hot_i[6])
         ,.clk_o(clkfb[7])
         );


      assign async_reset_neg_li[7] = async_reset_neg;
      assign async_set_neg_li[7]   = hibit;
    

      bsg_rp_clk_gen_osc_v3_row row_7
        (.async_reset_neg_i(async_reset_neg_li[7])
         ,.async_set_neg_i(async_set_neg_li[7])
         ,.clkgate_i(clkgate_inv)
         ,.clkdly_i(clkdly_inv)
         ,.clkfb_i(clkfb[7])
         ,.ctl_i(ctl_one_hot_i[7])
         ,.clk_o(clkfb[8])
         );


  assign clk_o = clkfb[8];

endmodule
