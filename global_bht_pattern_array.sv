import lc3b_types::*;

module global_bht_pattern_array #(parameter width = 128)
(

    input clk,
    input write,
    input lc3b_global_bht_pattern_index index,
	 input lc3b_global_bht_pattern_index index_in,
    input [width-1:0] datain,
	 output logic [width-1:0] rdataout,
	 output logic [width-1:0] dataout
);

logic [width-1:0] data [15:0];

/* Initialize array */
initial
begin
    for (int i = 0; i < $size(data); i++)
    begin
        data[i] = 1'b0;
    end
end

always_ff @(negedge clk)
begin
    if (write == 1)
    begin
        data[index_in] = datain;
    end
end

assign rdataout = data[index];
assign dataout = data[index_in];

endmodule : global_bht_pattern_array