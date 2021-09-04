library verilog;
use verilog.vl_types.all;
entity buc_devider is
    generic(
        LENGTH          : integer := 11;
        BUC             : vl_logic_vector(0 to 10) := (Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0)
    );
    port(
        din_buc         : in     vl_logic_vector(10 downto 0);
        threshold       : in     vl_logic_vector(3 downto 0);
        valid           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LENGTH : constant is 1;
    attribute mti_svvh_generic_type of BUC : constant is 1;
end buc_devider;
