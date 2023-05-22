library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY partie4 IS 
PORT ( CLOCK_50 									: IN STD_LOGIC;
       KEY      									: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       SW       									: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
       HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
       LEDR 										: OUT STD_LOGIC_VECTOR(9 DOWNTO 0) );
END partie4;

ARCHITECTURE arch OF partie4 IS
   COMPONENT flip_flop
      PORT ( 	R 						: IN 	STD_LOGIC;
					Clock, Resetn, E 	: IN	STD_LOGIC;
					Q 						: OUT STD_LOGIC);
   END COMPONENT;
   COMPONENT regne
      GENERIC ( N : integer:= 7);
      PORT ( R 					: IN 	STD_LOGIC_VECTOR(N-1 DOWNTO 0);
             Clock, Resetn, E : IN	STD_LOGIC;
             Q 					: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
   END COMPONENT;
   COMPONENT OnChip_ram32x4 
      PORT ( clock     : IN  STD_LOGIC ;
             data      : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
             rdaddress : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
             wraddress : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
             wren      : IN  STD_LOGIC  := '1';
             q         : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;
   COMPONENT hex7seg
      PORT ( hex     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
             display : OUT STD_LOGIC_VECTOR(0 TO 6));
   END COMPONENT;
   SIGNAL Clock, Resetn, Wr, Write_sync : STD_LOGIC;
   SIGNAL Wr_addr, Wr_addr_sync: STD_LOGIC_VECTOR(4 DOWNTO 0); 
	SIGNAL Rd_addr : unsigned(4 DOWNTO 0); 
	SIGNAL Rd_addr_v : STD_LOGIC_VECTOR(4 DOWNTO 0); 


   SIGNAL onesSeondCount: integer range 0 to 50000000; 
   SIGNAL DataIn, DataIn_sync, DataOut : STD_LOGIC_VECTOR(3 DOWNTO 0); 
BEGIN
   Resetn <= KEY(0);
   Clock <= CLOCK_50;
	Rd_addr_v <= STD_LOGIC_VECTOR(Rd_addr);
	



	
   R1: flip_flop PORT MAP (R => SW(9), Clock => Clock, Resetn => Resetn, E => '1', Q => Write_sync);
   R2: flip_flop PORT MAP (R => Write_sync, Clock => Clock, Resetn => Resetn, E => '1', Q => Wr);
	
	
   R3: regne GENERIC MAP (N => 5) 
					PORT MAP(R => SW(8 DOWNTO 4), Clock => Clock, Resetn => Resetn, E => '1', Q => Wr_addr_sync);
   R4: regne  GENERIC MAP (N => 5) 
					PORT MAP	(R => Wr_addr_sync,	Clock => Clock, Resetn => Resetn, E => '1', Q => Wr_addr);

   R5: regne GENERIC MAP (N => 4) 
					PORT MAP(R => SW(3 DOWNTO 0), Clock => Clock, Resetn => Resetn, E => '1', Q => DataIn_sync);
   R6: regne GENERIC MAP (N => 4) 
					PORT MAP (R => DataIn_sync, 	Clock => Clock, Resetn => Resetn, E => '1', Q => DataIn);
					
					

  ---- add here the code that create 1Hz rd_address counter
  
  -------------------------------------------------------------------
	
	process(CLOCK_50)
--	variable cp1s : unsigned(25 downto 0):=(others=>'0');
	begin
	if(rising_edge(CLOCK_50)) then
		
		onesSeondCount<=onesSeondCount+1;
		if(onesSeondCount=50000000) then
			onesSeondCount<=0;
		end if;
		if(onesSeondCount=0) then 
			 Rd_addr<=Rd_addr+1;
			 end if; 
		end if; 

	end process;
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
     
	
----------------------------------------------------------------------


   U1: OnChip_ram32x4 PORT MAP (Clock => Clock, Data => DataIn , rdaddress => Rd_addr_v, wraddress => Wr_addr, wren => Wr, q => DataOut);


	-- afficher l'entrée de données, la sortie de données et les adresses sur les 7 segments
	
--------------------------------------------------------------------------



	
	U2: hex7seg port map (hex=>DataIn, display => HEX0);
	U3: hex7seg port map (hex=>DataOut, display => HEX1);
	U4: hex7seg port map (hex=>Rd_addr_v(3 downto 0), display => HEX4);
	U5: hex7seg port map (hex=>("000" & Rd_addr_v(4)), display => HEX5);
	U6: hex7seg port map (hex=>Wr_addr(3 downto 0), display => HEX2);
	U7: hex7seg port map (hex=>("000" & Wr_addr(4)), display => HEX3);








	
	
-------------------------------------------------------------------------

   LEDR(3 DOWNTO 0) <= DataIn;
   LEDR(8 DOWNTO 4) <= Wr_addr;
   LEDR(9) <= Wr;
END arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regne IS
   GENERIC ( N   : integer:=   7);
   PORT (   R   : IN   STD_LOGIC_VECTOR(N-1 DOWNTO 0);
      Clock, Resetn, E   : IN STD_LOGIC;
      Q   : OUT   STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END regne;

ARCHITECTURE arch OF regne IS
BEGIN
   PROCESS (Clock)
   BEGIN
      IF  rising_edge(clock) THEN
         IF (Resetn = '0') THEN   
            Q <= (OTHERS => '0');
         ELSIF (E = '1') THEN
            Q <= R;
         END IF;
      END IF;
   END PROCESS;
END arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flip_flop IS
   PORT (   R   : IN   STD_LOGIC;
      Clock, Resetn, E   : IN STD_LOGIC;
      Q   : OUT   STD_LOGIC);
END flip_flop;

ARCHITECTURE arch OF flip_flop IS
BEGIN
   PROCESS (Clock)
   BEGIN
      IF  rising_edge(clock) THEN
         IF (Resetn = '0') THEN   
            Q <= '0';
         ELSIF (E = '1') THEN
            Q <= R;
         END IF;
      END IF;
   END PROCESS;
END arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hex7seg IS
   PORT (   hex   		: IN   STD_LOGIC_VECTOR(3 DOWNTO 0);
				display   	: OUT   STD_LOGIC_VECTOR(0 TO 6));
END hex7seg;

ARCHITECTURE arch OF hex7seg IS
BEGIN

   PROCESS (hex)
   BEGIN
      CASE (hex) IS
         WHEN "0000" => display <= "0000001";
         WHEN "0001" => display <= "1001111";
         WHEN "0010" => display <= "0010010";
         WHEN "0011" => display <= "0000110";
         WHEN "0100" => display <= "1001100";
         WHEN "0101" => display <= "0100100";
         WHEN "0110" => display <= "1100000";
         WHEN "0111" => display <= "0001111";
         WHEN "1000" => display <= "0000000";
         WHEN "1001" => display <= "0001100";
         WHEN "1010" => display <= "0001000";
         WHEN "1011" => display <= "1100000";
         WHEN "1100" => display <= "0110001";
         WHEN "1101" => display <= "1000010";
         WHEN "1110" => display <= "0110000";
         WHEN OTHERS => display <= "0111000";
      END CASE;
   END PROCESS;
END arch;
