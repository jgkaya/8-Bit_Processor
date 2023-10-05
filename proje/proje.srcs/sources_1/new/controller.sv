`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:04:55
// Design Name: 
// Module Name: controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module controller(input logic [3:0] opcode,
input logic [2:0] func,
input logic flagZ,
output logic MemtoReg,MemWrite,PCSrc,ALUSrc,RegDst,RegWrite,Jump,
output logic [2:0] ALUControl);  
logic [1:0] ALUOp;
logic branch,beq;
maindec md(opcode,MemtoReg,MemWrite,branch,ALUSrc,RegDst,RegWrite,Jump,ALUOp);
aludec ad(func,ALUOp,ALUControl);
assign PCSrc=branch&(opcode == beq ? flagZ : ~flagZ);
endmodule 
