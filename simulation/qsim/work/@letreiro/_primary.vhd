library verilog;
use verilog.vl_types.all;
entity Letreiro is
    port(
        CLK             : in     vl_logic;
        ch0             : in     vl_logic;
        ch1             : in     vl_logic;
        saida1          : out    vl_logic;
        saida2          : out    vl_logic;
        saida3          : out    vl_logic;
        saida4          : out    vl_logic;
        saida5          : out    vl_logic;
        saida6          : out    vl_logic;
        saida7          : out    vl_logic
    );
end Letreiro;
