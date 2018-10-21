import rv32i_types::*;

module mp3_cpu
(
    input clk,

    /* instruction cache */
    output logic read_a,
    output logic write_a,
    output logic [3:0] wmask_a,
    output logic [31:0] address_a,
    output logic [31:0] wdata_a,
    input resp_a,
    input [31:0] rdata_a,

    /* data cache */
    output logic read_b,
    output logic write_b,
    output logic [3:0] wmask_b,
    output logic [31:0] address_b,
    output logic [31:0] wdata_b,
    input resp_b,
    input [31:0] rdata_b
);

/*IF_stage signal*/
logic [31:0] IF_addr;
logic {31:0} instr;

/*ID_stage signal*/

/*EX_stage signal*/

/*MEM_stage signal*/

/*WB_stage signal*/

/*control word*/
rv32i_control_word ID_ctrl;
rv32i_control_word EX_ctrl;
rv32i_control_word MEM_ctrl;
rv32i_control_word WB_ctrl;

IF_stage IF_stage
(
		.clk,
		.EX_jmp_pc,
		.IF_addr
);

control_memory control_memory
(
    .instr,
    .ctrl
);

 module control_word_reg
 (
    .clk,
    .reset,
    .rv32i_control_word control_signal_in,
    output rv32i_control_word control_signal_out, 
    input load_control_word 
 );
 
module ID_pipe
(
	input [31:0] IF_pc,
	output logic [31:0] ID_pc,
	input clk,
	input reset
);

module ID_stage
(
		input clk,
		input [4:0] ID_rs1,
		input [4:0] ID_rs2,
		input [31:0] WB_in,
		input [4:0] ID_rd,
		input ID_load_regfile,
		input [31:0] ID_pc,
		input [31:0] ID_b_imm,
		input [31:0] ID_j_imm,
		input [31:0] ID_i_imm,
		input [1:0] jb_sel,
		
		output logic [31:0] ID_rs1_out,
		output logic [31:0] ID_rs2_out,
		output logic [31:0] ID_jmp_pc,
		output logic [31:0] ID_pc_out
);

 module control_word_reg
 (
    input clk,
    input reset,
    input rv32i_control_word control_signal_in,
    output rv32i_control_word control_signal_out, 
    input load_control_word 
 );

module EX_pipe
(
	input [31:0] ID_pc,
	input [31:0] ID_rs1_out,
	input [31:0] ID_rs2_out,
	input [31:0] ID_jmp_pc,
	input ID_pc_mux_sel,
	
	output logic [31:0] EX_pc,
	output logic [31:0] EX_rs1_out,
	output logic [31:0] EX_rs2_out,
	output logic [31:0] EX_jmp_pc,
	output logic EX_pc_mux_sel,
	/*other signals*/
	input clk,
	input reset
);

module EX_stage
(
    input clk,
    /* control signals */
    input logic EX_alumux1_sel,
    input logic [2:0] EX_alumux2_sel,
    input logic [2:0] EX_regfilemux_sel,
    input logic EX_cmpmux_sel,
    input alu_ops EX_aluop,
    input branch_funct3_t EX_cmpop,
    input load_funct3_t EX_loadop,
    /* input data*/
    input rv32i_word EX_pc,
    input rv32i_word EX_rs1_out, EX_rs2_out,
    input rv32i_word EX_i_imm, EX_u_imm, EX_b_imm, EX_s_imm, EX_j_imm,
    input rv32i_word EX_rs1_forwarded_WB, EX_rs2_forwarded_WB,
    input rv32i_word EX_rs1_forwarded_MEM, EX_rs2_forwarded_MEM,    
    /*output data*/
    output rv32i_word EX_alu_out,
    output rv32i_word EX_cmp_out,
    /*to do*/
    input logic EX_forwarding_sel1,
    input logic EX_forwarding_sel2
);

 module control_word_reg
 (
    input clk,
    input reset,
    input rv32i_control_word control_signal_in,
    output rv32i_control_word control_signal_out, 
    input load_control_word 
 );
 
module MEM_pipe(
	input clk,
	input reset,
	// input load,
	
	input [31:0] EX_pc,
	input [31:0] EX_alu_out,
	input [31:0] EX_rs2_out,
	input EX_cmp_out,
	
	output logic [31:0] MEM_pc,
	output logic [31:0] MEM_alu_out,
	output logic [31:0] MEM_rs2_out,
	output MEM_cmp_out
);

module MEM_stage
(
	input [31:0] MEM_rs2_out,
	input [31:0] MEM_alu_out,
	output [31:0] MEM_addr,
	output [31:0] MEM_data

);	

 module control_word_reg
 (
    input clk,
    input reset,
    input rv32i_control_word control_signal_in,
    output rv32i_control_word control_signal_out, 
    input load_control_word 
 );
 
module WB_pipe
(
	input MEM_cmp_out,
	input [31:0] MEM_alu_out,
	input [31:0] MEM_rdata,	/*read from data cache*/
	input [31:0] MEM_pc,
	output logic WB_cmp_out,
	output logic [31:0] WB_alu_out,
	output logic [31:0] WB_rdata,
	output logic [31:0] WB_pc,
	/*other signals*/
	input clk,
	//input load,
	input reset
);

module WB_stage(
	input [31:0] WB_pc,
	input [2:0] WB_funct3,
	input [31:0] WB_rdata,
	input WB_cmp_out,
	input [31:0] WB_alu_out,
	input [31:0] WB_u_imm,
	input [3:0] WB_regfilemux_sel,
	output logic [31:0] WB_in
);


endmodule : mp3_cpu
