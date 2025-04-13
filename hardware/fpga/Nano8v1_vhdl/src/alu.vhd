library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    Port(
        A  : in std_logic_vector(7 downto 0);
        B  : in std_logic_vector(7 downto 0);
        OP : in std_logic_vector(3 downto 0);
        CI : in std_logic;
        S  : out std_logic_vector(7 downto 0);
        CO : out std_logic;
        Z  : out std_logic;
        N  : out std_logic;
        LEDs : out std_logic_vector(5 downto 0)
    );
end entity;

architecture rtl of alu is
    signal operation : std_logic_vector(15 downto 0);
    signal result : std_logic_vector(7 downto 0);
begin
    process(OP, operation)
    begin
        operation <= (others => '0');
        operation(to_integer(unsigned(OP))) <= '1';
        LEDs(0) <= not operation(1);
        LEDs(1) <= not operation(2);
        LEDs(2) <= not operation(3);
        LEDs(3) <= not operation(4);
        LEDs(4) <= not operation(5);
        LEDs(5) <= not operation(6);
    end process;

process(A, B, OP, CI)
    variable temp_result : std_logic_vector(8 downto 0);
    begin
        case OP is
            when "0000" => -- NOP
                temp_result := ('0' & A) + ('0' & B) + ("00000000" & CI);
                result <= temp_result(7 downto 0);
                CO <= temp_result(8);
            when "0001" => -- SUB
                temp_result := ('0' & A) - ('0' & B) - ("00000000" & not CI);
                result <= temp_result(7 downto 0);
                CO <= temp_result(8);
            when "0010" => -- AND
                result <= A and B;
                CO <= '0';
            when "0011" => -- OR
                result <= A or B;
                CO <= '0';
            -- Add more cases...
            when others =>
                result <= (others => '0');
                CO <= '0';
        end case;

        -- Flags
        Z <= '1' when result = "00000000" else '0';
        N <= result(7);
        S <= result;
    end process;


end architecture;