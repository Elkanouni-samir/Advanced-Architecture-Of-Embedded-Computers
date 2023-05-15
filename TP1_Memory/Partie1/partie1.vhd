library ieee;
use ieee.std_logic_1164.all;

entity partie1 is
	port(
		clock		:	IN	 	std_logic;
		address	: 	IN		std_logic_vector(4 downto 0);
		wren		:	IN		std_logic;
		datain	:	IN		std_logic_vector(3 downto 0);
		dataout	:	OUT 	std_logic_vector(3 downto 0)
		);
end partie1;

architecture arch of partie1 is
	Component OnChip_ram32x4 IS
		PORT
			(
				address	: IN 	STD_LOGIC_VECTOR (4 DOWNTO 0);
				clock		: IN 	STD_LOGIC  := '1';
				data		: IN 	STD_LOGIC_VECTOR (3 DOWNTO 0);
				wren		: IN 	STD_LOGIC ;
				q			: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
			);
	END Component;
			
begin

	U1: OnChip_ram32x4 port map (Clock => Clock, Address => Address, wren => wren, data => datain, q => dataout);
	
end arch;