library ieee;
use ieee.std_logic_1164.all;


entity Logic_Processor is port (
		hexA		: in std_logic_vector(3 downto 0);
		hexB		: in std_logic_vector(3 downto 0);
		Button	: in std_logic_vector(2 downto 0);
		output	: out std_logic_vector(7 downto 0)
);
end entity Logic_Processor;

architecture meat of Logic_Processor is

begin

	with Button select
	output <= "0000" & (hexA and hexB) when "001",
				"0000" & (hexA or hexB) when "010",
				"0000" & (hexA xor hexB) when "100",
				"00000000" when others;

end meat;

 