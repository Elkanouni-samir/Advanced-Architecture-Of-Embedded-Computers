
LIBRARY ieee;
USE ieee.std_logic_1164.all;

--entity declaration
ENTITY Lab IS 
PORT ( KEY : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       SW  : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
       HEX5, HEX4, HEX2, HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
       LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0) );
END Lab;

--architecture declaration
ARCHITECTURE arch OF Lab IS
--OnChip_ram32x4 component declaration
   COMPONENT OnChip_ram32x4 
      PORT ( address : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
             clock   : IN  STD_LOGIC ;
             data    : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
             wren    : IN  STD_LOGIC  := '1';
             q       : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;
--hex7seg component declaration
   COMPONENT hex7seg
      PORT ( hex     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
             display : OUT STD_LOGIC_VECTOR(0 TO 6));
   END COMPONENT;
--signals declaration
   SIGNAL Clock, Wren : STD_LOGIC;
   SIGNAL Address : STD_LOGIC_VECTOR(4 DOWNTO 0); 
   SIGNAL DataIn, DataOut : STD_LOGIC_VECTOR(3 DOWNTO 0); 
--begin of architecture
BEGIN
    -- OnChip_ram32x4 component instantiation
    -- Assigning input and control signals
   Clock <= KEY(0);
   Wren <= SW(9);
   DataIn <= SW(3 DOWNTO 0);
   Address <= SW(8 DOWNTO 4);

   U1: OnChip_ram32x4 PORT MAP (Address => address, Clock => Clock, Data => DataIn, Wren => wren, q => DataOut);
    -- hex7seg component instantiation
    -- Displaying input data, output data, and address on 7-segment displays
	U2: hex7seg PORT MAP (hex=>DataIn, display =>hex0);
	U3: hex7seg PORT MAP (hex=>DataOut, display =>hex2);
	U4: hex7seg PORT MAP (hex=>Address(3 downto 0), display =>hex4);
	U5: hex7seg PORT MAP (hex=>"000"&Address(4), display =>hex5);
    -- LEDR assignment
    -- Assigning values to LEDR for visualization
   LEDR(3 DOWNTO 0) <= DataIn;
   LEDR(8 DOWNTO 4) <= Address;
   LEDR(9) <= Wren;
END arch;




LIBRARY ieee;
USE ieee.std_logic_1164.all;
--entity declaration
ENTITY hex7seg IS
   PORT ( hex     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
          display : OUT STD_LOGIC_VECTOR(0 TO 6));
END hex7seg;
--architecture declaration
ARCHITECTURE Behavior OF hex7seg IS
BEGIN
   -- Assigning values to display for each input
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
