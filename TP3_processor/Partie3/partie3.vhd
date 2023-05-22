library ieee;
use ieee.std_logic_1164.all;

entity partie3 is
	port(
			key	: in std_logic_vector(1 downto 0);
			SW		: in std_logic_vector(9 downto 0);
			LEDR	: out std_logic_vector(9 downto 0)
			);
end partie3;

architecture arch of partie3 is
	
	component processor is
		port
			(
				clock, aResetn, Run: in std_logic;
				Din: in std_logic_vector(8 downto 0);
				BusWires: buffer std_logic_vector(8 downto 0);
				Done: buffer std_logic
			);
	end component;

	component OnChip_rom IS
		PORT
			(
				address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				q		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
			);
	END component;
	
	component counter is
		port
			(
				clock, aResetn : in  std_logic;
				count 			: out std_logic_vector(4 downto 0)
			);
	end component;
	signal DATA : STD_logic_vector (8 DOWNTO 0);
	signal PC_COUNTER : STD_logic_vector (4 DOWNTO 0);


	
begin
-- add below the architecture of the circuit
	U1: processor port map(clock=>Key(1), aResetn=>SW(0), Run=>SW(9), Din=>DATA, Buswires=>LEDR(8 downto 0), Done=>LEDR(9));
	U2: OnChip_rom port map(address=>PC_COUNTER,clock=>keY(0),q=>DATA);
	U3: counter port map(clock=>Key(0),aResetn=>sw(0),count=>PC_counter);
										
end arch;
 
-- Add below the VHDL description of the counter
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity counter is
	port(
				clock, aResetn : in  std_logic;
				count 			: out std_logic_vector(4 downto 0)
			);
end counter;

architecture arch of counter is
signal u_count : unsigned (4 downto 0);
begin
	process(clock, aResetn)
	begin
		if(aResetn='0') then
			u_count<="00000";
		elsif(rising_edge(clock)) then
			u_count<=u_count +1;
		end if;
	count<= std_logic_vector(u_count);
	end process;
end arch;
 
	 

