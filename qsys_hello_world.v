module qsys_hello_world(
	input clk,
	input rst_n,
	
	input  [3:0]key,
	output [3:0]led,
	
	input  epcs_data0,
	output epcs_dclk,
	output epcs_sce,
	output epcs_sdo,	
	
	output       sdram0_clk,    //IC47
	output       sdram0_ras_n,
	output       sdram0_we_n, 
	output       sdram0_cas_n,
	output       sdram0_cke,  
	output       sdram0_cs_n, 
	inout  [31:0]sdram0_dq,   
	output [ 3:0]sdram0_dqm,  
	output [10:0]sdram0_addr,
	output [ 1:0]sdram0_ba,   
	
	output       sdram1_clk,    //IC48
	output       sdram1_ras_n,
	output       sdram1_we_n, 
	output       sdram1_cas_n,
	output       sdram1_cke,  
	output       sdram1_cs_n, 
	inout  [31:0]sdram1_dq,   
	output [ 3:0]sdram1_dqm,  
	output [10:0]sdram1_addr,
	output [ 1:0]sdram1_ba   
	);

//wire define
wire    clk_100m;
wire    clk_100m_shift;

wire    locked;
wire    sys_rst_n;

//
assign sys_rst_n = rst_n & locked;
assign sdram0_clk = clk_100m_shift;

pll_clk u_pll_clk(
	.inclk0             (clk),
	.areset             (~rst_n),
	
	.c0                 (clk_100m),
	.c1                 (clk_100m_shift),
	.locked             (locked)
);

    nios2_qsys u_qsys (
        .clk_clk       (clk_100m),      //     clk.clk
        .reset_reset_n (sys_rst_n),         //   reset.reset_n
		  
        .epcs_dclk     (epcs_dclk ),    //    epcs.dclk
        .epcs_sce      (epcs_sce  ),    //        .sce
        .epcs_sdo      (epcs_sdo  ),    //        .sdo
        .epcs_data0    (epcs_data0),    //        .data0
		  
        .key_export    (key),           //     key.export
        .led_export    (led),           //     led.export
		  
		  .sdram47_addr  (sdram0_addr),   // sdram47.addr
        .sdram47_ba    (sdram0_ba),     //        .ba
        .sdram47_cas_n (sdram0_cas_n),  //        .cas_n
        .sdram47_cke   (sdram0_cke),    //        .cke
        .sdram47_cs_n  (sdram0_cs_n),   //        .cs_n
        .sdram47_dq    (sdram0_dq),     //        .dq
        .sdram47_dqm   (sdram0_dqm),    //        .dqm
        .sdram47_ras_n (sdram0_ras_n),  //        .ras_n
        .sdram47_we_n  (sdram0_we_n)    //        .we_n
    ); 

	 
endmodule