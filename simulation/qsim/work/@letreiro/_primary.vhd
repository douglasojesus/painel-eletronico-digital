library verilog;
use verilog.vl_types.all;
entity Letreiro is
    port(
        CLK             : in     vl_logic;
        ch0             : in     vl_logic;
        ch1             : in     vl_logic;
        L1              : out    vl_logic;
        L2              : out    vl_logic;
        L3              : out    vl_logic;
        L4              : out    vl_logic;
        L5              : out    vl_logic;
        C1              : out    vl_logic;
        C2              : out    vl_logic;
        C3              : out    vl_logic;
        C4              : out    vl_logic;
        C5              : out    vl_logic;
        C6              : out    vl_logic;
        C7              : out    vl_logic
    );
end Letreiro;
