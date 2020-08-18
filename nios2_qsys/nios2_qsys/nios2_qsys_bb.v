
module nios2_qsys (
	clk_clk,
	epcs_dclk,
	epcs_sce,
	epcs_sdo,
	epcs_data0,
	key_export,
	led_export,
	reset_reset_n,
	sdram47_addr,
	sdram47_ba,
	sdram47_cas_n,
	sdram47_cke,
	sdram47_cs_n,
	sdram47_dq,
	sdram47_dqm,
	sdram47_ras_n,
	sdram47_we_n);	

	input		clk_clk;
	output		epcs_dclk;
	output		epcs_sce;
	output		epcs_sdo;
	input		epcs_data0;
	input	[7:0]	key_export;
	output	[7:0]	led_export;
	input		reset_reset_n;
	output	[10:0]	sdram47_addr;
	output	[1:0]	sdram47_ba;
	output		sdram47_cas_n;
	output		sdram47_cke;
	output		sdram47_cs_n;
	inout	[31:0]	sdram47_dq;
	output	[3:0]	sdram47_dqm;
	output		sdram47_ras_n;
	output		sdram47_we_n;
endmodule
