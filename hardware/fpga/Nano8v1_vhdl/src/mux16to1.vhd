library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.mux4to1_package.all;

entity mux16to1 is
	port( w: in std_logic_vector(0 to 15);
			s: in std_logic_vector(3 downto 0);
			f: out std_logic);
end mux16to1;

architecture structure of mux16to1 is
	signal m: std_logic_vector(0 to 3);
begin
	mux1: mux4to1 port map(
		w(0), w(1), w(2), w(3), s(1 downto 0), m(0));
	mux2: mux4to1 port map(
		w(4), w(5), w(6), w(7), s(1 downto 0), m(1));
	mux3: mux4to1 port map(
		w(8), w(9), w(10), w(11), s(1 downto 0), m(2));
	mux4: mux4to1 port map(
		w(12), w(13), w(14), w(15), s(1 downto 0), m(3));
	mux5: mux4to1 port map(
		m(0), m(1), m(2), m(3), s(3 downto 2), f);
end structure;