`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:05:51
// Design Name: 
// Module Name: maindec
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
module maindec(input logic [3:0] opcode,
output logic MemtoReg,MemWrite,branch,ALUSrc,RegDst,RegWrite,Jump,
output logic [1:0] ALUOp);
reg [8:0] controls;
assign {RegWrite,RegDst,ALUSrc,branch,MemWrite,MemtoReg,Jump,ALUOp} = controls;
always@(*)
case(opcode)
4'b0000:controls<=9'b110000010; //Rtype
4'b1011:controls<=9'b101001000; //LW
4'b1111:controls<=9'b001010000; //SW
4'b1000:controls<=9'b000100001; //BEQ
4'b0100:controls<=9'b101000000; //ADDI
4'b0010:controls<=9'b000000100; //JUMP
default: controls<=9'bxxxxxxxx;
endcase
endmodule
