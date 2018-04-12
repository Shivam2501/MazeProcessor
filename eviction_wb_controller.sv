module eviction_wb_control
(
	input clk,
	
	/* Signals to datapath*/
	output logic valid0_write,
	output logic valid1_write,
	output logic valid2_write,
	output logic valid3_write,
	output logic valid_in,
	output logic tag0_write,
	output logic tag1_write,
	output logic tag2_write,
	output logic tag3_write,
	output logic data0_write,
	output logic data1_write,
	output logic data2_write,
	output logic data3_write,
	output logic lru_write,
	output logic [2:0] lru_in,
	output logic pmem_addr_sig,
	output logic out_data_sel,
	
	/* Signals from datapath*/
	input [2:0] lru_out,
	input [1:0] cline_and,
	input hit,
	input valid0_out,
	input valid1_out,
	input valid2_out,
	input valid3_out,
	
	/* Signals from cpu*/
	input cpu_action_stb,
	input cpu_action_cyc,
	input cpu_write,
	
	/* Signals to cpu*/
	output logic cpu_resp,
	output logic cpu_retry,
	
	/* Signals to memory */
	output logic mem_action_stb,
	output logic mem_action_cyc,
	output logic mem_write,
	
	/* Signals from memory */
	input mem_resp,
	input mem_retry
);

logic resp;
logic valid;

assign cpu_resp = resp;
assign cpu_retry = cpu_action_stb & cpu_action_cyc & (!resp);
assign valid = valid0_out & valid1_out & valid2_out & valid3_out;

enum int unsigned {
    /* List of states */
	 idle,
	 write_back,
	 read_mem
} state, next_state;

always_comb
begin : state_actions
    /* Default output assignments */
	 valid0_write = 1'b0;
	 valid1_write = 1'b0;
	 valid2_write = 1'b0;
	 valid3_write = 1'b0;
	 valid_in = 1'b0;
	 tag0_write = 1'b0;
	 tag1_write = 1'b0;
	 tag2_write = 1'b0;
	 tag3_write = 1'b0;
	 data0_write = 1'b0;
	 data1_write = 1'b0;
	 data2_write = 1'b0;
	 data3_write = 1'b0;
	 lru_write = 1'b0;
	 lru_in = 3'b000;
	 pmem_addr_sig = 1'b0;
	 resp = 1'b0;
	 mem_action_stb = 1'b0;
	 mem_action_cyc = 1'b0;
	 mem_write = 1'b0;
	 out_data_sel = 1'b0;
	 
	 /* Actions for each state */
	 case(state)
		idle: begin
			if (hit && cpu_action_stb && cpu_action_cyc)
			begin
				// Read
				if (!cpu_write)
				begin
					lru_in = lru_out;
					if (cline_and == 2'b00) begin
						lru_in[0] = 0;
						lru_in[1] = 0;
					end
					else if (cline_and == 2'b01) begin
						lru_in[0] = 0;
						lru_in[1] = 1;
					end
					else if (cline_and == 2'b10) begin
						lru_in[0] = 1;
						lru_in[2] = 0;
					end
					else if (cline_and == 2'b11) begin
						lru_in[0] = 1;
						lru_in[2] = 1;
					end
					
					lru_write = 1;
					resp = 1;
				end
				
				// Write
				if (cpu_write)
				begin
					lru_in = lru_out;
					if (cline_and == 2'b00) begin
						data0_write = 1;
						lru_in[0] = 0;
						lru_in[1] = 0;
					end
					else if (cline_and == 2'b01) begin
						data1_write = 1;
						lru_in[0] = 0;
						lru_in[1] = 1;
					end
					else if (cline_and == 2'b10) begin
						data2_write = 1;
						lru_in[0] = 1;
						lru_in[2] = 0;
					end
					else if (cline_and == 2'b11) begin
						data3_write = 1;
						lru_in[0] = 1;
						lru_in[2] = 1;
					end
					
					lru_write = 1;
					resp = 1;
				end
			end
			
			// Miss + Write + Empty slot
			if (!hit && cpu_action_stb && cpu_action_cyc && cpu_write && !valid)
			begin
				lru_in = lru_out;
				valid_in = 1;
				if (valid0_out == 0) begin
					tag0_write = 1;
					valid0_write = 1;
					data0_write = 1;
					lru_in[0] = 0;
					lru_in[1] = 0;
				end
				else if (valid1_out == 0) begin
					tag1_write = 1;
					valid1_write = 1;
					data1_write = 1;
					lru_in[0] = 0;
					lru_in[1] = 1;
				end
				else if (valid2_out == 0) begin
					tag2_write = 1;
					valid2_write = 1;
					data2_write = 1;
					lru_in[0] = 1;
					lru_in[2] = 0;
				end
				else if (valid3_out == 0) begin
					tag3_write = 1;
					valid3_write = 1;
					data3_write = 1;
					lru_in[0] = 1;
					lru_in[2] = 1;
				end
				
				lru_write = 1;
				resp = 1;
			end
		end
		
		write_back: begin
			pmem_addr_sig = 1;
			mem_action_stb = 1;
			mem_action_cyc = 1;
			mem_write = 1;
			
			valid_in = 0;
			lru_in = lru_out;
			if (mem_resp) begin
				if (lru_out[0] == 1 && lru_out[1] == 1) begin
					valid0_write = 1;
					lru_in[0] = 0;
					lru_in[1] = 0;
				end
				else if (lru_out[0] == 1 && lru_out[1] == 0) begin
					valid1_write = 1;
					lru_in[0] = 0;
					lru_in[1] = 1;
				end
				else if (lru_out[0] == 0 && lru_out[2] == 1) begin
					valid2_write = 1;
					lru_in[0] = 1;
					lru_in[2] = 0;
				end
				else begin
					valid3_write = 1;
					lru_in[0] = 1;
					lru_in[2] = 1;
				end
				lru_write = 1;
			end	
		end
		
		read_mem: begin
			pmem_addr_sig = 0;
			mem_action_stb = 1;
			mem_action_cyc = 1;
			mem_write = 0;
			
			if (mem_resp) begin
				out_data_sel = 1;
				resp = 1;
			end
		end
		
		default: ;
	 endcase
end

always_comb 
begin : next_state_logic
    /* Next state information and conditions (if any)
     * for transitioning between states */
		next_state = state;
		case(state)
			idle: begin
				if (hit || (cpu_action_stb && cpu_action_cyc && cpu_write && !valid))
					next_state = idle;
				else if (!hit && cpu_action_stb && cpu_action_cyc && !cpu_write)
					next_state = read_mem;
				else if (valid0_out || valid1_out || valid2_out || valid3_out)
					next_state = write_back;
				else
					next_state = idle;
			end
			
			read_mem: begin
				if (!mem_resp)
					next_state = read_mem;
				else
					next_state = idle;
			end
			
			write_back: begin
				if (!mem_resp)
					next_state = write_back;
				else
					next_state = idle;
			end
			
			default: next_state = idle;
		endcase
end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
	 state <= next_state;
end

endmodule: eviction_wb_control