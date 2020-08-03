
module nios2_qsys (
	clk_clk,
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
	sdram47_we_n,
	sdram48_addr,
	sdram48_ba,
	sdram48_cas_n,
	sdram48_cke,
	sdram48_cs_n,
	sdram48_dq,
	sdram48_dqm,
	sdram48_ras_n,
	sdram48_we_n);	

	input		clk_clk;
	output	[3:0]	led_export;
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
	output	[10:0]	sdram48_addr;
	output	[1:0]	sdram48_ba;
	output		sdram48_cas_n;
	output		sdram48_cke;
	output		sdram48_cs_n;
	inout	[31:0]	sdram48_dq;
	output	[3:0]	sdram48_dqm;
	output		sdram48_ras_n;
	output		sdram48_we_n;
endmodule
