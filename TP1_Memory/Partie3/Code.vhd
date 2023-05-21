LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY partie3 IS 
PORT ( KEY : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       SW  : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
       HEX5, HEX4, HEX2, HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
       LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0) );
END partie3;

ARCHITECTURE arch OF partie3 IS
   COMPONENT hex7seg
      PORT ( hex     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
             display : OUT STD_LOGIC_VECTOR(0 TO 6));
   END COMPONENT;
   SIGNAL Clock, wren : STD_LOGIC;
   SIGNAL Address, Address_reg : INTEGER RANGE 0 to 31;
   SIGNAL Address_STD : STD_LOGIC_VECTOR(4 DOWNTO 0);
   SIGNAL DataIn, DataOut : STD_LOGIC_VECTOR(3 DOWNTO 0); 


   TYPE mem IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(3 DOWNTO 0);
   SIGNAL memory_array : mem;
BEGIN
   Clock <= KEY(0);
   wren <= SW(9);
   DataIn <= SW(3 DOWNTO 0);
   Address_STD <= SW(8 DOWNTO 4);
   Address <= to_integer(unsigned(Address_STD));


   PROCESS (Clock)
   BEGIN
      IF (Clock'EVENT AND Clock = '1') THEN
         IF (wren = '1') THEN
            memory_array(Address) <= DataIn;
         END IF;
         Address_reg <= Address;
      END IF;
   END PROCESS;
 
   DataOut <= memory_array(Address_reg);

  --afficher l'entrée de données, la sortie de données et l'adresse sur les 7 segments
------------------------
	U2: hex7seg PORT MAP (hex=>DataIn, display =>hex0);
	
	U3: hex7seg PORT MAP (hex=>DataOut, display =>hex2);
	
	U4: hex7seg PORT MAP (hex=>Address_STD(3 downto 0), display =>hex4);
	
	U5: hex7seg PORT MAP (hex=>"000"& Address_STD(4), display =>hex5);
	
	
---	---------------------
	
	
   LEDR(3 DOWNTO 0) <= DataIn;
   LEDR(8 DOWNTO 4) <= Address_STD;
   LEDR(9) <= wren;
END arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hex7seg IS
   PORT ( hex     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
          display : OUT STD_LOGIC_VECTOR(0 TO 6));
END hex7seg;

ARCHITECTURE Behavior OF hex7seg IS
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
END Behavior;
