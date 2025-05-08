library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port (clk_i : in STD_LOGIC;
          rst_i : in STD_LOGIC;
          led_o : out STD_LOGIC);
end top;

architecture Behavioral of top is
    constant N : natural := 100000000; 

    signal counter : natural := 0;
    signal cos : std_logic := '0';
begin
    multi : process(clk_i, rst_i)
        begin
            if rst_i = '1' then     
                cos <= '0';
                counter <= 0;
            elsif counter = N then
                counter <= 0;
            elsif falling_edge(clk_i) then
                counter <= counter + 1;     
                if counter < N/2 then   
                    cos <= '1';
                else
                    cos <= '0';
                end if;
            end if;
    end process multi;
    led_o <= cos;
end Behavioral; 
