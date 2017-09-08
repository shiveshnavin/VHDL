----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:57:35 09/09/2017 
-- Design Name: 
-- Module Name:    mux21_st - Behavioral 
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

entity mux21_st is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end mux21_st;
--((not s) and a) or (s and b);

architecture Behavioral of mux21_st is

component andg is
	port(a,b : in bit; c : out bit);
end component;


component org is
	port(a,b : in bit; c : out bit);
end component;


component notg is
	port(a : in bit; b : out bit);
end component;

begin

NT1: notg port map (s,not_s);
AN1: andg port map (not_s,a,a_and_not_s);
AN2: andg port map (s,b,s_and_b);
OR1: org port map (a_and_not_s,s_and_b,o);
 

end Behavioral;

