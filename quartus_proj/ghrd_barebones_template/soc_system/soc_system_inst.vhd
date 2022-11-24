	component soc_system is
		port (
			a_export                : out   std_logic_vector(31 downto 0);                     -- export
			b_export                : out   std_logic_vector(31 downto 0);                     -- export
			clk_clk                 : in    std_logic                      := 'X';             -- clk
			data_data               : out   std_logic_vector(255 downto 0);                    -- data
			data_trigger_export     : out   std_logic_vector(31 downto 0);                     -- export
			datavalid_datavalid     : out   std_logic;                                         -- datavalid
			hps_0_h2f_reset_reset_n : out   std_logic;                                         -- reset_n
			memory_mem_a            : out   std_logic_vector(14 downto 0);                     -- mem_a
			memory_mem_ba           : out   std_logic_vector(2 downto 0);                      -- mem_ba
			memory_mem_ck           : out   std_logic;                                         -- mem_ck
			memory_mem_ck_n         : out   std_logic;                                         -- mem_ck_n
			memory_mem_cke          : out   std_logic;                                         -- mem_cke
			memory_mem_cs_n         : out   std_logic;                                         -- mem_cs_n
			memory_mem_ras_n        : out   std_logic;                                         -- mem_ras_n
			memory_mem_cas_n        : out   std_logic;                                         -- mem_cas_n
			memory_mem_we_n         : out   std_logic;                                         -- mem_we_n
			memory_mem_reset_n      : out   std_logic;                                         -- mem_reset_n
			memory_mem_dq           : inout std_logic_vector(31 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs          : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n        : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- mem_dqs_n
			memory_mem_odt          : out   std_logic;                                         -- mem_odt
			memory_mem_dm           : out   std_logic_vector(3 downto 0);                      -- mem_dm
			memory_oct_rzqin        : in    std_logic                      := 'X';             -- oct_rzqin
			reset_reset_n           : in    std_logic                      := 'X';             -- reset_n
			ret_export              : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- export
			cpt_cpt                 : out   std_logic_vector(18 downto 0)                      -- cpt
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			a_export                => CONNECTED_TO_a_export,                --               a.export
			b_export                => CONNECTED_TO_b_export,                --               b.export
			clk_clk                 => CONNECTED_TO_clk_clk,                 --             clk.clk
			data_data               => CONNECTED_TO_data_data,               --            data.data
			data_trigger_export     => CONNECTED_TO_data_trigger_export,     --    data_trigger.export
			datavalid_datavalid     => CONNECTED_TO_datavalid_datavalid,     --       datavalid.datavalid
			hps_0_h2f_reset_reset_n => CONNECTED_TO_hps_0_h2f_reset_reset_n, -- hps_0_h2f_reset.reset_n
			memory_mem_a            => CONNECTED_TO_memory_mem_a,            --          memory.mem_a
			memory_mem_ba           => CONNECTED_TO_memory_mem_ba,           --                .mem_ba
			memory_mem_ck           => CONNECTED_TO_memory_mem_ck,           --                .mem_ck
			memory_mem_ck_n         => CONNECTED_TO_memory_mem_ck_n,         --                .mem_ck_n
			memory_mem_cke          => CONNECTED_TO_memory_mem_cke,          --                .mem_cke
			memory_mem_cs_n         => CONNECTED_TO_memory_mem_cs_n,         --                .mem_cs_n
			memory_mem_ras_n        => CONNECTED_TO_memory_mem_ras_n,        --                .mem_ras_n
			memory_mem_cas_n        => CONNECTED_TO_memory_mem_cas_n,        --                .mem_cas_n
			memory_mem_we_n         => CONNECTED_TO_memory_mem_we_n,         --                .mem_we_n
			memory_mem_reset_n      => CONNECTED_TO_memory_mem_reset_n,      --                .mem_reset_n
			memory_mem_dq           => CONNECTED_TO_memory_mem_dq,           --                .mem_dq
			memory_mem_dqs          => CONNECTED_TO_memory_mem_dqs,          --                .mem_dqs
			memory_mem_dqs_n        => CONNECTED_TO_memory_mem_dqs_n,        --                .mem_dqs_n
			memory_mem_odt          => CONNECTED_TO_memory_mem_odt,          --                .mem_odt
			memory_mem_dm           => CONNECTED_TO_memory_mem_dm,           --                .mem_dm
			memory_oct_rzqin        => CONNECTED_TO_memory_oct_rzqin,        --                .oct_rzqin
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --           reset.reset_n
			ret_export              => CONNECTED_TO_ret_export,              --             ret.export
			cpt_cpt                 => CONNECTED_TO_cpt_cpt                  --             cpt.cpt
		);

