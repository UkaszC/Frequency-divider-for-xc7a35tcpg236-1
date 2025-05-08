library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb is
end tb;

architecture Behavioral of tb is
    component top is
        Port(clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           led_o : out STD_LOGIC);
    end component;
    
    constant PERIOD : time := 10ns;     
    
    signal clk_i : std_logic := '0';
    signal rst_i : std_logic := '1';    
    signal led_o : std_logic;
begin
    UUT : top port map(clk_i => clk_i, rst_i => rst_i, led_o => led_o);
    
    clk_i <= not clk_i after PERIOD/2;   
    
    tb : process
        begin
            wait for 1ns;
            rst_i <= '0';
            wait for 600ns;
            rst_i <= '1';
            wait for 1ns;
            rst_i <= '0';
            wait;  
    end process tb;
end Behavioral;
