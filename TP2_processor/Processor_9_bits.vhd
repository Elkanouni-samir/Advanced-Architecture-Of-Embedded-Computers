
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--entity declaration
entity processor is
	--Instructions declaration
	generic(
		mv : std_logic_vector:= "000";
		mvi: std_logic_vector:= "001";
		add: std_logic_vector:= "010";
		sub: std_logic_vector:= "011"
	);
	--Inputs Outputs declaration
	port(
		clock, aResetn, Run: in std_logic;
		DataIn: in std_logic_vector(8 downto 0);
		Bus_Wires: buffer std_logic_vector(8 downto 0);
		Done: buffer std_logic
		);

end processor;

--architecture declaration
architecture arch of processor is
	--Decoder and Register declaration
	component dec3to8 is
		port(
			input : in std_logic_vector(2 downto 0);
			enable: in std_logic;
			output: out std_logic_vector(0 to 7)
			);
	end component;
	
	component reg_n is
		generic( N: integer:=9);
		port(
			clock	: in std_logic;
			enable	: in std_logic;
			D		: in std_logic_vector(N-1 downto 0);
			Q		: out std_logic_vector(N-1 downto 0)
			);
	end component;
	--Signals declaration
	type state_type is (T0, T1, T2, T3);
	signal Tcycle_D, Tcycle_Q : state_type;
	signal Rin, Rout, Xregn, Yregn : std_logic_vector(0 to 7);
	signal DinOut, Gout, Ain, Gin, IRin, AddSub: std_logic;
	signal R0, R1, R2, R3, R4, R5, R6, R7, IR, G, A: std_logic_vector(8 downto 0);
	signal I: std_logic_vector(2 downto 0);
	signal sel : std_logic_vector(9 downto 0);
	signal sum: signed(8 downto 0);




begin
	-- Extracting bits from IR
	I <= IR(8 downto 6);

	-- Instantiating dec3to8 components
	U1: dec3to8 port map (input => IR(5 downto 3) , enable => '1', output => Xregn);
	U2: dec3to8 port map (input => IR(2 downto 0) , enable => '1', output => Yregn);

	-- Control of the cycles of the excution of the instructions
	process(Tcycle_Q, Run, Done)
	begin
		case(Tcycle_Q) is
			-- The instruction mv and mvi take 2 clock cycles to execute
			-- The instruction add and sub take 4 clock cycles to execute

			when T0	=> 	if run='0' then Tcycle_D <= T0;		 	--  idle state
								else Tcycle_D <= T1; end if; 	--  instruction execution state
								
			when T1  => 	if Done='1' then Tcycle_D <= T0;	--  In case of mv and mvi instructions
								else Tcycle_D <= T2; end if;	--  In case of add and sub instructions

			when T2  =>		Tcycle_D <= T3;	

			when T3  => 	Tcycle_D <= T0;
		end case;
	end process;
	
	-- Control of the signals of control of dataflow
	process(Tcycle_Q, I)
	begin
		-- Resetting control signals
		DinOut <= '0'; Gout <= '0'; Ain <='0'; Gin <='0'; IRin<='0';
		AddSub <='0'; Rin <="00000000"; Rout <="00000000"; Done <='0';

		-- Changin the control signals based on the current state and the instruction
		case(Tcycle_Q) is
			when T0	=> IRin <='1';
			when T1 =>
				case(I) is
					when mv		=> Rout <= Yregn; Rin <= Xregn; Done <='1';
					when mvi	=> Dinout <='1'; Rin <= Xregn; Done <='1';
					when add	=> Rout <= Xregn; Ain <= '1';
					when others => Rout <= Xregn; Ain <= '1';
				end case;

			when T2 => 
				case(I) is
					when add 	=> Rout <= Yregn; Gin <='1'; AddSub <='1';
					when others => Rout <= Yregn; Gin <='1';
				end case;

			when T3 =>
				case(I) is
					when add	=> Gout <='1'; Rin <= Xregn; Done <='1';
					when others => Gout <='1'; Rin <= Xregn; Done <='1';
				end case;
		end case;
	end process;

	-- Clock and reset process
	process(clock, aResetn)
	begin
		if (aResetn='0') then
			Tcycle_Q <=T0;
		elsif rising_edge(clock) then
			Tcycle_Q <= Tcycle_D;
		end if;
	end process;
	
	-- Dataflow process for addition/subtraction
	process(A, Bus_Wires)
	begin
		if AddSub ='1' then
			sum <= signed(A) + signed(Bus_Wires);
		else
			sum <= signed(A) - signed(Bus_Wires);
		end if;
	end process;

	-- Process for selecting Bus_Wires value based on the selection signal
	process(DataIn, R0, R1, R2, R3, R4, R5, R6, R7, G, sel)
	begin
		case(sel) is
			when "1000000000" => Bus_Wires <= DataIn;
			when "0100000000" => Bus_Wires <= R0;
			when "0010000000" => Bus_Wires <= R1;
			when "0001000000" => Bus_Wires <= R2;
			when "0000100000" => Bus_Wires <= R3;
			when "0000010000" => Bus_Wires <= R4;
			when "0000001000" => Bus_Wires <= R5;
			when "0000000100" => Bus_Wires <= R6;
			when "0000000010" => Bus_Wires <= R7;
			when "0000000001" => Bus_Wires <= G;
			when others 	   => Bus_Wires <= DataIn;
		end case;
	end process;
	
	-- Register instantiations
	Reg0: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(0), D => Bus_Wires, Q => R0);
	Reg1: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(1), D => Bus_Wires, Q => R1);
	Reg2: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(2), D => Bus_Wires, Q => R2);
	Reg3: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(3), D => Bus_Wires, Q => R3);
	Reg4: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(4), D => Bus_Wires, Q => R4);
	Reg5: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(5), D => Bus_Wires, Q => R5);		
	Reg6: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(6), D => Bus_Wires, Q => R6);
	Reg7: reg_n generic map(N => 9) port map (clock => clock, enable => Rin(7), D => Bus_Wires, Q => R7);
	Reg8: reg_n generic map(N => 9) port map (clock => clock, enable => Ain, D => Bus_Wires, Q => A);		
	Reg9: reg_n generic map(N => 9) port map (clock => clock, enable => IRin, D => DataIn, Q => IR);					
	Reg10: reg_n generic map(N => 9) port map(clock => clock, enable => Gin, D => std_logic_vector(sum), Q => G);

	-- Assigning value to the selection signal
	sel <= DinOut & Rout & Gout;

end arch;

-- 3 to 8 decoder
library ieee;
use ieee.std_logic_1164.all;
entity dec3to8 is
	port(
		input : in std_logic_vector(2 downto 0);
		enable: in std_logic;
		output: out std_logic_vector(0 to 7)
			);
end dec3to8;
architecture arch of dec3to8 is
begin
	process(input, enable)
	begin
		if (enable = '1') then
			case(input) is
				when "000" 	=> output <= "10000000";
				when "001" 	=> output <= "01000000";
				when "010" 	=> output <= "00100000";
				when "011" 	=> output <= "00010000";
				when "100" 	=> output <= "00001000";
				when "101" 	=> output <= "00000100";
				when "110" 	=> output <= "00000010";
				when others => output <= "00000001";
			end case;
		else output <= "00000000";
		end if;
	end process;
end arch;

-- 9-bit register
library ieee;
use ieee.std_logic_1164.all;
entity reg_n is
	generic( N: integer:=9);
	port(
		clock	: in std_logic;
		enable	: in std_logic;
		D		: in std_logic_vector(N-1 downto 0);
		Q		: out std_logic_vector(N-1 downto 0)
		);
end reg_n;	
architecture arch of reg_n is
begin
	process(clock)
	begin
		if(rising_edge(clock)) then 
			if(enable='1') then 
				Q<=D;
			end if;
		end if;
	end process;
end arch;