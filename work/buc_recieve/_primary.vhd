library verilog;
use verilog.vl_types.all;
entity buc_recieve is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        din             : in     vl_logic;
        dout_buc        : out    vl_logic_vector(10 downto 0)
    );
end buc_recieve;
