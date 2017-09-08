----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:50:53 09/09/2017 
-- Design Name: 
-- Module Name:    mux21_bh - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux21_bh is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end mux21_bh;
--((not s) and a) or (s and b);

architecture Behavioral of mux21_bh is


begin

process
	begin
		
		if s='1' then
			o<=i0;
		elsif s='0' then
			o<=i1;
		end if;
		
	end process;
		

end Behavioral;

