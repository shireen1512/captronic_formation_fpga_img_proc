LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- lis N valeurs en ram a partir de la premiere adresse disponible en partage (512 Mo)
-- apt update
-- apt install busybox
-- ## ecriture dans la RAM
-- busybox devmem 0x20000000 w 0xAA
-- busybox devmem 0xC0000000 w 0x1
-- ## lire la ram a l'adresse 0x20000000
-- busybox devmem 0x20000000

ENTITY read_ram IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clk   : IN STD_LOGIC;
        start_process        : IN STD_LOGIC := '0';
        avm_m0_read          : OUT STD_LOGIC;
        avm_m0_address       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        avm_m0_waitrequest   : IN STD_LOGIC := '0';
        avm_m0_readdata      : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
        avm_m0_readdatavalid : IN STD_LOGIC := '0';
        out_dataValid        : OUT STD_LOGIC := '0';
        out_data             : OUT STD_LOGIC_VECTOR(255 DOWNTO 0)
		);
END read_ram;

ARCHITECTURE BEHAVIOR OF read_ram IS
	signal cpt   : integer range 0 to 800*600 := 0 ;
	type state_type is (idle, ask_val, wait_val);
	signal state   : state_type := idle ;
BEGIN

	process (clk, reset)
	begin
		if reset = '1' then
			state <= idle;
		elsif (rising_edge(clk)) then
			case state is
				when idle=>
					if start_process = '1' then
						state <= ask_val;
					else
						state <= idle;
					end if;
				when ask_val=>
					if avm_m0_waitrequest = '0' then
						state <= wait_val;
					else
						state <= ask_val;
					end if;
				when wait_val=>
					if avm_m0_readdatavalid = '1' then
						cpt <= cpt + 1 ;
						if cpt = 800*600-1 then
							cpt <= 0 ;
							state <= idle;
						else
							state <= ask_val;
						end if ;
					else
						state <= wait_val;
					end if;
			end case;
		end if;
	end process;

	process (state)
	begin
		case state is
			when idle =>
				avm_m0_read     <= '0' ;
				avm_m0_address  <= std_logic_vector(to_unsigned(0, 32 )) ;
				out_dataValid   <= '0' ;
				out_data        <= std_logic_vector(to_unsigned(0, 256)) ;
			when ask_val =>
				avm_m0_read     <= '1' ;
				avm_m0_address <= std_logic_vector(to_unsigned(536870912+(256*cpt), 32 )) ;
				out_dataValid   <= '0' ;
				out_data        <= std_logic_vector(to_unsigned(0, 256)) ;
			when wait_val =>
				avm_m0_read     <= '0' ;
				avm_m0_address  <= std_logic_vector(to_unsigned(0, 32 )) ;
				out_dataValid   <= avm_m0_readdatavalid ;
				out_data        <= avm_m0_readdata ;
		end case;
	end process;
	
END BEHAVIOR;