--------------------------------------------------------------------------------
-- Pulse generator
-- F.Thiebolt
--------------------------------------------------------------------------------

-- library definitions
library ieee;

-- library uses
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- Component definition
entity pulse_gen is
  generic( MAX_CPT : natural := 1E06 );
	port (
		RST, MCLK: in std_logic;
        P : out std_logic
    );

end pulse_gen;

-- architecture definition
architecture behaviour of pulse_gen is

begin

ppulse: process(MCLK,RST)
    variable cpt: natural range 0 to MAX_CPT;
begin
    if( RST='0' ) then
        cpt:=0;
        P <= '0';
    elsif rising_edge(MCLK) then
        p <= '0';
        cpt := cpt + 1;
        if(cpt = 10) then
            cpt := 0;
            P <= '1';
        end if;
    end if;           

end process ppulse;

end behaviour;

