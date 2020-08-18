	component nios2_qsys is
		port (
			clk_clk       : in    std_logic                     := 'X';             -- clk
			epcs_dclk     : out   std_logic;                                        -- dclk
			epcs_sce      : out   std_logic;                                        -- sce
			epcs_sdo      : out   std_logic;                                        -- sdo
			epcs_data0    : in    std_logic                     := 'X';             -- data0
			key_export    : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			led_export    : out   std_logic_vector(7 downto 0);                     -- export
			reset_reset_n : in    std_logic                     := 'X';             -- reset_n
			sdram47_addr  : out   std_logic_vector(10 downto 0);                    -- addr
			sdram47_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram47_cas_n : out   std_logic;                                        -- cas_n
			sdram47_cke   : out   std_logic;                                        -- cke
			sdram47_cs_n  : out   std_logic;                                        -- cs_n
			sdram47_dq    : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram47_dqm   : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram47_ras_n : out   std_logic;                                        -- ras_n
			sdram47_we_n  : out   std_logic                                         -- we_n
		);
	end component nios2_qsys;

	u0 : component nios2_qsys
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --     clk.clk
			epcs_dclk     => CONNECTED_TO_epcs_dclk,     --    epcs.dclk
			epcs_sce      => CONNECTED_TO_epcs_sce,      --        .sce
			epcs_sdo      => CONNECTED_TO_epcs_sdo,      --        .sdo
			epcs_data0    => CONNECTED_TO_epcs_data0,    --        .data0
			key_export    => CONNECTED_TO_key_export,    --     key.export
			led_export    => CONNECTED_TO_led_export,    --     led.export
			reset_reset_n => CONNECTED_TO_reset_reset_n, --   reset.reset_n
			sdram47_addr  => CONNECTED_TO_sdram47_addr,  -- sdram47.addr
			sdram47_ba    => CONNECTED_TO_sdram47_ba,    --        .ba
			sdram47_cas_n => CONNECTED_TO_sdram47_cas_n, --        .cas_n
			sdram47_cke   => CONNECTED_TO_sdram47_cke,   --        .cke
			sdram47_cs_n  => CONNECTED_TO_sdram47_cs_n,  --        .cs_n
			sdram47_dq    => CONNECTED_TO_sdram47_dq,    --        .dq
			sdram47_dqm   => CONNECTED_TO_sdram47_dqm,   --        .dqm
			sdram47_ras_n => CONNECTED_TO_sdram47_ras_n, --        .ras_n
			sdram47_we_n  => CONNECTED_TO_sdram47_we_n   --        .we_n
		);

