library verilog;
use verilog.vl_types.all;
entity buc is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        din             : in     vl_logic;
        valid           : out    vl_logic;
        threshold       : in     vl_logic_vector(3 downto 0)
    );
end buc;
