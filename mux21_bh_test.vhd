--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:52:48 09/09/2017
-- Design Name:   
-- Module Name:   C:/PIC/VHDL/mux21_bh_test.vhd
-- Project Name:  VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux21_bh
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
 
ENTITY mux21_bh_test IS
END mux21_bh_test;
 
ARCHITECTURE behavior OF mux21_bh_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux21_bh
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         s : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    


   --Inputs 
   signal i1 : std_logic := '0';
   signal i0 : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant i0_period : time := 10 ns;
   constant i1_period : time := 30 ns;
   constant s_period : time := 50 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux21_bh PORT MAP (
          i0 => i0,
          i1 => i1,
          s => s,
          o => o
        );

    i0_process :process
   begin
		i0 <= '0';
		wait for i0_period/2;
		i0 <= '1';
		wait for i0_period/2;
   end process;
	 
	 i1_process :process
		begin
			i1 <= '0';
			wait for i1_period/2;
			i1 <= '1';
			wait for i1_period/2;
		end process;
	 

	 s_process :process
		begin
			s <= '0';
			wait for s_period/2;
			s <= '1';
			wait for s_period/2;
		end process;
	 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for i0_period*10;

      -- insert stimulus here 

      wait;
   end process;


END;
