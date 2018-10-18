import rv32i_types::*;

module mp3_cpu
(
    input clk,

    /* Memory signals */
    input mem_resp,
    input [31:0] mem_rdata,
    output mem_read,
    output mem_write,
    output [3:0] mem_byte_enable,
    output [31:0] mem_address,
    output [31:0] mem_wdata
);

rv32i_opcode opcode;
logic [2:0] funct3;
logic [6:0] funct7;
logic bit30;
logic br_en;
logic load_pc;
logic load_ir;
logic load_regfile;
logic load_MAR;
logic load_MDR;
logic load_mem_data_out;
logic pcmux_sel;
logic [2:0] regfilemux_sel;
logic marmux_sel;
alu_ops aluop;
logic alumux1_sel;
logic [2:0] alumux2_sel;
branch_funct3_t cmpop;
logic cmpmux_sel;
logic load_data_out;
logic jalr;
logic instr_data;

/* Instantiate MP 0 top level blocks here */
/*
module control
(
    /* Input and output port declarations *
	 input clk,
	 /* datapath controls *
	 /* ir *
	 input rv32i_opcode opcode,
	 input [2:0] funct3,
    input [6:0] funct7,
	 /* CMP *
	 input br_en,
	 /* load signal *
	 output logic load_pc,
	 output logic load_ir,
	 output logic load_regfile,
	 output logic load_MAR,
	 output logic load_MDR,
	 output logic load_mem_data_out,
	 /* select signal *
	 output logic pcmux_sel,
	 output logic marmux_sel,
	 output logic alumux1_sel,
	 output logic cmpmux_sel,
	 output logic [1:0] alumux2_sel,
	 output logic [1:0] regfilemux_sel
	 /* alu signal *
	 output logic alu_ops aluop,
	 /* CMP signal *
	 output logic branch_funct3_t cmpop,
	 /* memory signals *
	 input mem_resp,
	 output logic mem_read,
	 output logic mem_write,
	 output rv32i_mem_wmask mem_byte_enable
);
*/
cpu_control control
(
    .clk,
	 .opcode,
	 .funct3,
	 .funct7,
	 .br_en,
	 .load_pc,
	 .load_ir,
	 .load_regfile,
	 .load_MAR,
	 .load_MDR,
	 .load_mem_data_out,
	 .pcmux_sel,
	 .marmux_sel,
	 .alumux1_sel,
	 .cmpmux_sel,
	 .alumux2_sel,
	 .regfilemux_sel,
	 .aluop,
	 .cmpop,
	 .mem_resp,
	 .mem_read,
	 .mem_write,
	 .mem_byte_enable,
	 .instr_data
);
/*
module datapath
(
    input clk,
    /* select signals *
    input pcmux_sel,
	 input marmux_sel,
	 input alumux1_sel,
	 input cmpmux_sel
	 input [1:0] alumux2_sel,
	 input [1:0] regfilemux_sel,
	 /* control signals *
    input load_pc,
	 input load_ir,
	 input load_MDR, 
	 input load_MAR,
	 input load_regfile,
	 input load_mem_data_out,
	 /* ALU info signal *
	 input alu_ops aluop,
	 input branch_funct3_t cmpop,
	 /* memory input *
	 input rv32i_word mem_rdata,
	 
	 /* output signals *
	 output logic [2:0] funct3,
    output logic [6:0] funct7,
    output rv32i_opcode opcode,
	 output rv32i_word mem_address
	 output rv32i_word mem_wdata,
	 output logic br_en;
);
*/
cpu_datapath datapath
(
    .clk,
    .pcmux_sel,
	 .marmux_sel,
	 .alumux1_sel,
	 .cmpmux_sel,
	 .alumux2_sel,
	 .regfilemux_sel,
    .load_pc,
	 .load_ir,
	 .load_MDR, 
	 .load_MAR,
	 .load_regfile,
	 .load_mem_data_out,
	 .aluop,
	 .cmpop,
	 .mem_rdata,
	 .funct3,
    .funct7,
    .opcode,
	 .mem_address,
	 .mem_wdata,
	 .br_en,
	 .instr_data
);

endmodule : mp3_cpu
