onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/clk
add wave -noupdate -radix hexadecimal -childformat {{{/testbench/processor/c/cpu_d/id_stage/reg_file/data[7]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[6]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[5]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[4]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[3]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[2]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[1]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[0]} -radix hexadecimal}} -expand -subitemconfig {{/testbench/processor/c/cpu_d/id_stage/reg_file/data[7]} {-height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/id_stage/reg_file/data[6]} {-height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/id_stage/reg_file/data[5]} {-height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/id_stage/reg_file/data[4]} {-height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/id_stage/reg_file/data[3]} {-height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/id_stage/reg_file/data[2]} {-height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/id_stage/reg_file/data[1]} {-height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/id_stage/reg_file/data[0]} {-height 16 -radix hexadecimal}} /testbench/processor/c/cpu_d/id_stage/reg_file/data
add wave -noupdate /testbench/processor/c/cpu_d/if_stage/control_flush
add wave -noupdate /testbench/processor/c/cpu_d/branch_enable
add wave -noupdate -color Cyan -label if_pc_data -radix hexadecimal /testbench/processor/c/cpu_d/if_stage/pc_regsiter/data
add wave -noupdate -color Cyan -label if_pc_in -radix hexadecimal -childformat {{{/testbench/processor/c/cpu_d/if_id_pc/in[15]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[14]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[13]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[12]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[11]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[10]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[9]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[8]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[7]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[6]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[5]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[4]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[3]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[2]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[1]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/in[0]} -radix hexadecimal}} -subitemconfig {{/testbench/processor/c/cpu_d/if_id_pc/in[15]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[14]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[13]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[12]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[11]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[10]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[9]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[8]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[7]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[6]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[5]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[4]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[3]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[2]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[1]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/in[0]} {-color Cyan -height 16 -radix hexadecimal}} /testbench/processor/c/cpu_d/if_id_pc/in
add wave -noupdate -color Cyan -label if_pc_out -radix hexadecimal -childformat {{{/testbench/processor/c/cpu_d/if_id_pc/out[15]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[14]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[13]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[12]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[11]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[10]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[9]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[8]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[7]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[6]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[5]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[4]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[3]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[2]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[1]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_pc/out[0]} -radix hexadecimal}} -subitemconfig {{/testbench/processor/c/cpu_d/if_id_pc/out[15]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[14]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[13]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[12]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[11]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[10]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[9]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[8]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[7]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[6]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[5]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[4]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[3]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[2]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[1]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_pc/out[0]} {-color Cyan -height 16 -radix hexadecimal}} /testbench/processor/c/cpu_d/if_id_pc/out
add wave -noupdate -color Cyan -label if_ir_in -radix hexadecimal -childformat {{{/testbench/processor/c/cpu_d/if_id_ir/in[15]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[14]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[13]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[12]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[11]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[10]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[9]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[8]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[7]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[6]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[5]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[4]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[3]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[2]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[1]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/in[0]} -radix hexadecimal}} -subitemconfig {{/testbench/processor/c/cpu_d/if_id_ir/in[15]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[14]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[13]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[12]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[11]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[10]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[9]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[8]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[7]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[6]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[5]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[4]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[3]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[2]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[1]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/in[0]} {-color Cyan -height 16 -radix hexadecimal}} /testbench/processor/c/cpu_d/if_id_ir/in
add wave -noupdate -color Cyan -label if_ir_out -radix hexadecimal -childformat {{{/testbench/processor/c/cpu_d/if_id_ir/out[15]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[14]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[13]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[12]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[11]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[10]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[9]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[8]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[7]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[6]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[5]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[4]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[3]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[2]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[1]} -radix hexadecimal} {{/testbench/processor/c/cpu_d/if_id_ir/out[0]} -radix hexadecimal}} -subitemconfig {{/testbench/processor/c/cpu_d/if_id_ir/out[15]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[14]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[13]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[12]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[11]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[10]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[9]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[8]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[7]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[6]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[5]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[4]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[3]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[2]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[1]} {-color Cyan -height 16 -radix hexadecimal} {/testbench/processor/c/cpu_d/if_id_ir/out[0]} {-color Cyan -height 16 -radix hexadecimal}} /testbench/processor/c/cpu_d/if_id_ir/out
add wave -noupdate -color Gold -label id_ctrl_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_ctrl/in
add wave -noupdate -color Gold -label id_ctrl_out -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_ctrl/out
add wave -noupdate -color Gold -label id_pc_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_pc/in
add wave -noupdate -color Gold -label id_pc_out -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_pc/out
add wave -noupdate -color Gold -label id_sr1_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_sr1_in/in
add wave -noupdate -color Gold -label id_sr2_out -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_sr2_in/in
add wave -noupdate -color Gold -label id_dest_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_dest_in/in
add wave -noupdate -color Gold -label id_sr1_data_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_sr1/in
add wave -noupdate -color Gold -label id_sr2_data_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_sr2/in
add wave -noupdate -color Gold -label id_sr2mux_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_sr2mux/in
add wave -noupdate -color Gold -label id_dest_data_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_dest/in
add wave -noupdate -color Gold -label id_off8_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_offset8/in
add wave -noupdate -color Gold -label id_off9_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_offset9/in
add wave -noupdate -color Gold -label id_off11_in -radix hexadecimal /testbench/processor/c/cpu_d/id_ex_offset11/in
add wave -noupdate -color White -label ex_ctrl_in -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_ctrl/in
add wave -noupdate -color White -label ex_ctrl_out -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_ctrl/out
add wave -noupdate -color White -label ex_dest_in -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_dest_in/in
add wave -noupdate -color White -label ex_pc_in -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_pc/in
add wave -noupdate -color White -label ex_pc_out -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_pc/out
add wave -noupdate -color White -label ex_pc_br_in -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_pc_br/in
add wave -noupdate -color White -label ex_pc_j_in -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_pc_j/in
add wave -noupdate -color White -label ex_dest_data_in -radix hexadecimal /testbench/processor/c/cpu_d/ex_mem_dest/in
add wave -noupdate -color Magenta -label mem_ctrl_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_ctrl/in
add wave -noupdate -color Magenta -label mem_ctrl_out -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_ctrl/out
add wave -noupdate -color Magenta -label mem_pc_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_pc/in
add wave -noupdate -color Magenta -label mem_pc_out -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_pc/out
add wave -noupdate -color Magenta -label mem_curr_pc_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_curr_pc/in
add wave -noupdate -color Magenta -label mem_curr_pc_out -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_curr_pc/out
add wave -noupdate -color Magenta -label mem_pred_pc_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_predicted_pc/in
add wave -noupdate -color Magenta -label mem_pred_pc_out -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_predicted_pc/out
add wave -noupdate -color Magenta -label mem_dmem_addr_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_dmem_address/in
add wave -noupdate -color Magenta -label mem_new_pc_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_new_pc/out
add wave -noupdate -color Magenta -label mem_pc_br_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_pc_br/in
add wave -noupdate -color Magenta -label mem_wdata_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_mem_wdata/in
add wave -noupdate -color Magenta -label mem_alu_in -radix hexadecimal /testbench/processor/c/cpu_d/mem_wb_alu/in
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/branch/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/branch_mispred/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/stall/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/l1_hit/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/l2_hit/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/evict_hit/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/l1_miss/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/l2_miss/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/evict_miss/data
add wave -noupdate -radix hexadecimal /testbench/processor/c/cpu_d/mem_stage/m_stall/p_counter/curr_stall/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44067972 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 160
configure wave -valuecolwidth 75
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {999773823 ps} {1000011905 ps}
