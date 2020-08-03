	component nios2_qsys is
		port (
			clk_clk       : in    std_logic                     := 'X';             -- clk
			led_export    : out   std_logic_vector(3 downto 0);                     -- export
			reset_reset_n : in    std_logic                     := 'X';             -- reset_n
			sdram47_addr  : out   std_logic_vector(10 downto 0);                    -- addr
			sdram47_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram47_cas_n : out   std_logic;                                        -- cas_n
			sdram47_cke   : out   std_logic;                                        -- cke
			sdram47_cs_n  : out   std_logic;                                        -- cs_n
			sdram47_dq    : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram47_dqm   : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram47_ras_n : out   std_logic;                                        -- ras_n
			sdram47_we_n  : out   std_logic;                                        -- we_n
			sdram48_addr  : out   std_logic_vector(10 downto 0);                    -- addr
			sdram48_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram48_cas_n : out   std_logic;                                        -- cas_n
			sdram48_cke   : out   std_logic;                                        -- cke
			sdram48_cs_n  : out   std_logic;                                        -- cs_n
			sdram48_dq    : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram48_dqm   : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram48_ras_n : out   std_logic;                                        -- ras_n
			sdram48_we_n  : out   std_logic                                         -- we_n
		);
	end component nios2_qsys;

	u0 : component nios2_qsys
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --     clk.clk
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
			sdram47_we_n  => CONNECTED_TO_sdram47_we_n,  --        .we_n
			sdram48_addr  => CONNECTED_TO_sdram48_addr,  -- sdram48.addr
			sdram48_ba    => CONNECTED_TO_sdram48_ba,    --        .ba
			sdram48_cas_n => CONNECTED_TO_sdram48_cas_n, --        .cas_n
			sdram48_cke   => CONNECTED_TO_sdram48_cke,   --        .cke
			sdram48_cs_n  => CONNECTED_TO_sdram48_cs_n,  --        .cs_n
			sdram48_dq    => CONNECTED_TO_sdram48_dq,    --        .dq
			sdram48_dqm   => CONNECTED_TO_sdram48_dqm,   --        .dqm
			sdram48_ras_n => CONNECTED_TO_sdram48_ras_n, --        .ras_n
			sdram48_we_n  => CONNECTED_TO_sdram48_we_n   --        .we_n
		);

