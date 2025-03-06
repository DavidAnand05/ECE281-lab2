library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    -- Component Declaration
    component sevenseg_decoder is
        Port ( 
            i_Hex   : in  STD_LOGIC_VECTOR (3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    -- Test Signals
    signal w_Hex : STD_LOGIC_VECTOR (3 downto 0);  -- Input to the decoder
    signal w_seg : STD_LOGIC_VECTOR (6 downto 0);  -- Output from the decoder

begin

    -- Instantiate Unit Under Test (UUT)
    sevenseg_decoder_uut : sevenseg_decoder 
        port map (
            i_Hex   => w_Hex, 
            o_seg_n => w_seg
        );

    -- Stimulus Process
    test_process : process
    begin
        -- Test cases for each Hexadecimal input
        w_Hex <= x"0"; wait for 10 ns;
        assert (w_seg = "1000000") report "Bad with 0" severity failure;

        w_Hex <= x"1"; wait for 10 ns;
        assert (w_seg = "1111001") report "Bad with 1" severity failure;

        w_Hex <= x"2"; wait for 10 ns;
        assert (w_seg = "0100100") report "Bad with 2" severity failure;

        w_Hex <= x"3"; wait for 10 ns;
        assert (w_seg = "0110000") report "Bad with 3" severity failure;

        w_Hex <= x"4"; wait for 10 ns;
        assert (w_seg = "0011001") report "Bad with 4" severity failure;

        w_Hex <= x"5"; wait for 10 ns;
        assert (w_seg = "0010010") report "Bad with 5" severity failure;

        w_Hex <= x"6"; wait for 10 ns;
        assert (w_seg = "0000010") report "Bad with 6" severity failure;

        w_Hex <= x"7"; wait for 10 ns;
        assert (w_seg = "1111000") report "Bad with 7" severity failure;

        w_Hex <= x"8"; wait for 10 ns;
        assert (w_seg = "0000000") report "Bad with 8" severity failure;

        w_Hex <= x"9"; wait for 10 ns;
        assert (w_seg = "0011000") report "Bad with 9" severity failure;

        w_Hex <= x"A"; wait for 10 ns;
        assert (w_seg = "0001000") report "Bad with A" severity failure;

        w_Hex <= x"B"; wait for 10 ns;
        assert (w_seg = "0000011") report "Bad with B" severity failure;

        w_Hex <= x"C"; wait for 10 ns;
        assert (w_seg = "0100111") report "Bad with C" severity failure;

        w_Hex <= x"D"; wait for 10 ns;
        assert (w_seg = "0100001") report "Bad with D" severity failure;

        w_Hex <= x"E"; wait for 10 ns;
        assert (w_seg = "0000110") report "Bad with E" severity failure;

        w_Hex <= x"F"; wait for 10 ns;
        assert (w_seg = "0001110") report "Bad with F" severity failure;

        -- Wait indefinitely to hold simulation
        wait;
    end process;

end Behavioral;
