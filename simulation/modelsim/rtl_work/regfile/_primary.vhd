library verilog;
use verilog.vl_types.all;
entity regfile is
    port(
        clk             : in     vl_logic;
        load            : in     vl_logic;
        data_in         : in     vl_logic_vector(15 downto 0);
        src_a           : in     vl_logic_vector(2 downto 0);
        src_b           : in     vl_logic_vector(2 downto 0);
        src_c           : in     vl_logic_vector(2 downto 0);
        dest            : in     vl_logic_vector(2 downto 0);
        reg_a           : out    vl_logic_vector(15 downto 0);
        reg_b           : out    vl_logic_vector(15 downto 0);
        reg_c           : out    vl_logic_vector(15 downto 0)
    );
end regfile;
