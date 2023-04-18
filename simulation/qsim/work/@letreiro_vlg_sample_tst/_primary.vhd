library verilog;
use verilog.vl_types.all;
entity Letreiro_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        ch0             : in     vl_logic;
        ch1             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Letreiro_vlg_sample_tst;
