library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_7seg is
    Port (
        B0, B1, B2, B3 : in STD_LOGIC;
        A, B, C, D, E, F, G : out STD_LOGIC
    );
end bcd_7seg;

architecture Behavioral of bcd_7seg is
begin
    process(B0, B1, B2, B3)
        variable BCD : STD_LOGIC_VECTOR(3 downto 0);
    begin
        BCD := B3 & B2 & B1 & B0;

        case BCD is
            when "0000" =>
                A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; F <= '0'; G <= '1'; -- 0
            when "0001" =>
                A <= '1'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; F <= '1'; G <= '1'; -- 1
            when "0010" =>
                A <= '0'; B <= '0'; C <= '1'; D <= '0'; E <= '0'; F <= '1'; G <= '0'; -- 2
            when "0011" =>
                A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '1'; F <= '1'; G <= '0'; -- 3
            when "0100" =>
                A <= '1'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; F <= '0'; G <= '0'; -- 4
            when "0101" =>
                A <= '0'; B <= '1'; C <= '0'; D <= '0'; E <= '1'; F <= '0'; G <= '0'; -- 5
            when "0110" =>
                A <= '0'; B <= '1'; C <= '0'; D <= '0'; E <= '0'; F <= '0'; G <= '0'; -- 6
            when "0111" =>
                A <= '0'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; F <= '1'; G <= '1'; -- 7
            when "1000" =>
                A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; F <= '0'; G <= '0'; -- 8
            when "1001" =>
                A <= '0'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; F <= '0'; G <= '0'; -- 9
            when "1010" =>
                A <= '0'; B <= '0'; C <= '0'; D <= '1'; E <= '0'; F <= '0'; G <= '0'; -- A
            when "1011" =>
                A <= '1'; B <= '1'; C <= '0'; D <= '0'; E <= '0'; F <= '0'; G <= '0'; -- B
            when "1100" =>
                A <= '0'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; F <= '0'; G <= '1'; -- C
            when "1101" =>
                A <= '1'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; F <= '1'; G <= '0'; -- D
            when "1110" =>
                A <= '0'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; F <= '0'; G <= '0'; -- E
            when others =>
                A <= '0'; B <= '1'; C <= '1'; D <= '1'; E <= '0'; F <= '0'; G <= '0'; -- F
        end case;
    end process;
end Behavioral;