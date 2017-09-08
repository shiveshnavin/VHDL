--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:01:32 09/06/2017
-- Design Name:   
-- Module Name:   C:/PIC/VHDL/and_clk.vhd
-- Project Name:  VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: and_gate
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY and_clk IS
END and_clk;
 
ARCHITECTURE behavior OF and_clk IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT and_gate
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant a_period : time := 10 ns;
   constant b_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: and_gate PORT MAP (
          a => a,
          b => b,
          c => c
        );

   -- Clock process definitions
   a_process :process
   begin
		a <= '0';
		wait for a_period/2;
		a <= '1';
		wait for a_period/2;
   end process;
 

   b_process :process
   begin
		b <= '0';
		wait for b_period/2;
		b <= '1';
		wait for b_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for a_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
