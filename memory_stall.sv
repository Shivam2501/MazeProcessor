import lc3b_types::*;

module memory_stall
(
	input clk,
	input load_ex_mem,
	input [1:0] mem_ack_counter,
	input dmem_resp,
	input lc3b_opcode opcode,
	input lc3b_word dest_out,
	input lc3b_word alu_out,
	input lc3b_word dmem_rdata_out,

	output logic dmem_action_stb,
	output logic dmem_action_cyc,
	output logic dmem_write,
	output lc3b_mem_wmask dmem_byte_enable,
	output lc3b_word dmem_wdata,
	output logic mem_stall,
	output lc3b_word dmem_address
);

logic mem_ack_load;
logic [1:0] mem_ack_in;
logic [1:0] mem_ack_out;
logic mem_addr_mux_sel;
lc3b_word dmem_data_out;

/* Assign values */
always_comb
begin
	dmem_action_cyc = 0;
	dmem_action_stb = 0;
	mem_ack_in = 2'b00;
	mem_ack_load = 0;
	mem_addr_mux_sel = 0;
	
	if (load_ex_mem)
		mem_ack_load = 1;
	
	if ((opcode == op_ldr) || (opcode == op_str) || (opcode == op_ldb) || (opcode == op_stb) || (opcode == op_ldi) || (opcode == op_sti) || (opcode == op_trap))
	begin
		dmem_action_cyc = 1;
		dmem_action_stb = 1;
		mem_stall = 1;
	end
	else
		mem_stall = 0;
	
	// Write Signal
	if ((opcode == op_stb) || (opcode == op_str))
		dmem_write = 1;
	else
		dmem_write = 0;
		
	// Ack message
	if (dmem_resp)
	begin
		mem_ack_in = mem_ack_out + 2'b01;
		mem_ack_load = 1;
		if (mem_ack_counter == mem_ack_in)
			mem_stall = 0;
		else
		begin
			if ((opcode == op_ldi || opcode == op_sti) && (mem_ack_in == 2'b01))
			begin
				mem_addr_mux_sel = 1;
				if (opcode == op_sti)
					dmem_write = 1;
				else
					dmem_write = 0;
			end
		end
	end
	 
	 
	// Mem Byte Enable Signal
	if ((opcode == op_stb) && (dmem_address[0] == 1))
		dmem_byte_enable = 2'b10;
	else if ((opcode == op_stb) && (dmem_address[0] == 0))
		dmem_byte_enable = 2'b01;
	else
		dmem_byte_enable = 2'b11;
		
	dmem_wdata = dest_out;
end

register #(.width(2)) mem_curr_ack_counter
(
	.clk(clk),
	.load(mem_ack_load),
	.in(mem_ack_in),
	.out(mem_ack_out)
);

register dmem_data
(
	.clk(clk),
	.load(dmem_resp),
	.in(dmem_rdata_out),
	.out(dmem_data_out)
);

mux2 mem_addr_mux
(
	.sel(mem_addr_mux_sel),
	.a(alu_out),
	.b(dmem_data_out),
	.f(dmem_address)
);

endmodule: memory_stall