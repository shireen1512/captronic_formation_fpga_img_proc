LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ecris la valeur 55 en ram a la premiere adresse disponible en partage (512 Mo)

ENTITY write_ram IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clk : IN STD_LOGIC;
        start_process : IN STD_LOGIC := '0';
        avm_m0_write : OUT STD_LOGIC;
        avm_m0_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        avm_m0_writedata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
        avm_m0_waitrequest : IN STD_LOGIC := '0';
        avm_m0_byteenable : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        avm_m0_burstcount : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
		  );
END write_ram;

ARCHITECTURE BEHAVIOR OF write_ram IS
 signal avm_m0_write_sig     : std_logic ;
 signal avm_m0_address_sig   : std_logic_vector(31  DOWNTO 0) ;
 signal avm_m0_writedata_sig : std_logic_vector(255 DOWNTO 0) ;
 signal avm_m0_byteenable_sig : std_logic_vector(31 DOWNTO 0) ;
 signal avm_m0_burstcount_sig : std_logic_vector(10 DOWNTO 0) ;
 BEGIN
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				avm_m0_write_sig     <= '0' ;
				avm_m0_address_sig   <= std_logic_vector(to_unsigned(0, 32 )) ;
				avm_m0_writedata_sig <= std_logic_vector(to_unsigned(0, 256)) ;
				avm_m0_byteenable_sig <= std_logic_vector(to_unsigned(0, 32)) ;
				avm_m0_burstcount_sig <= std_logic_vector(to_unsigned(0, 11)) ;
			elsif (start_process = '1') then
				avm_m0_write_sig <= '1' ;
				avm_m0_address_sig <= std_logic_vector(to_unsigned(536870912, 32 )) ;
				avm_m0_writedata_sig <= std_logic_vector(to_unsigned(55, 256)) ;
				avm_m0_byteenable_sig <= std_logic_vector(to_unsigned(255, 32)) ; -- 255 => 8 '1' => 8 octets
				avm_m0_burstcount_sig <= std_logic_vector(to_unsigned(1, 11)) ; -- val mini = 1
			else
				avm_m0_write_sig     <= '0' ;
				avm_m0_address_sig   <= std_logic_vector(to_unsigned(0, 32 )) ;
				avm_m0_writedata_sig <= std_logic_vector(to_unsigned(0, 256)) ;
				avm_m0_byteenable_sig <= std_logic_vector(to_unsigned(0, 32)) ;
				avm_m0_burstcount_sig <= std_logic_vector(to_unsigned(0, 11)) ;
			end if;
			avm_m0_write      <= avm_m0_write_sig      ;
			avm_m0_address    <= avm_m0_address_sig    ;
			avm_m0_writedata  <= avm_m0_writedata_sig  ;
			avm_m0_byteenable <= avm_m0_byteenable_sig ;
			avm_m0_burstcount <= avm_m0_burstcount_sig ;
		end if;
	end process;
END BEHAVIOR;
