	nios2_qsys u0 (
		.clk_clk       (<connected-to-clk_clk>),       //     clk.clk
		.epcs_dclk     (<connected-to-epcs_dclk>),     //    epcs.dclk
		.epcs_sce      (<connected-to-epcs_sce>),      //        .sce
		.epcs_sdo      (<connected-to-epcs_sdo>),      //        .sdo
		.epcs_data0    (<connected-to-epcs_data0>),    //        .data0
		.key_export    (<connected-to-key_export>),    //     key.export
		.led_export    (<connected-to-led_export>),    //     led.export
		.reset_reset_n (<connected-to-reset_reset_n>), //   reset.reset_n
		.sdram47_addr  (<connected-to-sdram47_addr>),  // sdram47.addr
		.sdram47_ba    (<connected-to-sdram47_ba>),    //        .ba
		.sdram47_cas_n (<connected-to-sdram47_cas_n>), //        .cas_n
		.sdram47_cke   (<connected-to-sdram47_cke>),   //        .cke
		.sdram47_cs_n  (<connected-to-sdram47_cs_n>),  //        .cs_n
		.sdram47_dq    (<connected-to-sdram47_dq>),    //        .dq
		.sdram47_dqm   (<connected-to-sdram47_dqm>),   //        .dqm
		.sdram47_ras_n (<connected-to-sdram47_ras_n>), //        .ras_n
		.sdram47_we_n  (<connected-to-sdram47_we_n>)   //        .we_n
	);

