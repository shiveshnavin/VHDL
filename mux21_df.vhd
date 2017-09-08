----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:29:46 09/09/2017 
-- Design Name: 
-- Module Name:    mux21_df - Behavioral 
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

entity mux21_df is
    Port ( ii0,ii1 : in  STD_LOGIC  ;
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end mux21_df;

architecture mux21_dfa of mux21_df is

begin
 
 o<= ii0 when s='1' else ii1 when s='0' ;

end mux21_dfa;

