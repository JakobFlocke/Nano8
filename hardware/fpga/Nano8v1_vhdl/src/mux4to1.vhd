library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
	port (w0, w1, w2, w3 : in std_logic;
			s              : in std_logic_vector(1 downto 0);
			f              : out std_logic);
end mux4to1;

architecture behavior of mux4to1 is
begin
	with s select
		f <= w0 when "00",
			  w1 when "01",
			  w2 when "10",
			  w3 when others;
end behavior;

library ieee;
use ieee.std_logic_1164.all;
package mux4to1_package is
	component mux4to1 
		port (w0, w1, w2, w3 : in std_logic;
				s              : in std_logic_vector(1 downto 0);
				f              : out std_logic);
	end component;
end mux4to1_package;