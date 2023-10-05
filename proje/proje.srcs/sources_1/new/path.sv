`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:05:15
// Design Name: 
// Module Name: path
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
module path(input logic clk, reset, 
 input logic RegDst, 
 input logic RegWrite,  
 input logic ALUSrc, 
 input logic [2:0] ALUControl, 
 input logic MemtoReg, 
 input logic PCSrc, 
 output logic [3:0] ALUFlags, 
 output logic [7:0] PC, 
 input logic [15:0] Instr, 
 output logic [7:0] ALUResultOut,
 output logic [7:0] WriteData, 
 input logic [7:0] ReadData,
 input logic Jump); 
 logic [7:0] PCNext, PCPlus4,PCBranch,PCJump; 
 logic [7:0] ExtImm, SrcA, SrcB, Result; 
 logic [7:0] out,next; 
 logic [2:0] WriteReg;

flopr ff(clk,reset,PCNext,PC);
adder add1(PC,8'b00000001,PCPlus4);
extend ex(Instr[7:0],ExtImm);
shifter sh(ExtImm,out);
adder add2(out,PCPlus4,PCBranch);
mux2 mux(PCPlus4,PCBranch,PCSrc,next);
shifter s(Instr[7:0],PCJump);
mux2 mm(next,PCJump,Jump,PCNext);
mux2to3bit mux1(Instr[11:9],Instr[2:0],RegDst,WriteReg);
 mux2 last(ALUResultOut,ReadData,MemtoReg,Result);
regfile rf(clk,RegWrite,Instr[8:6],Instr[5:3],WriteReg,Result,SrcA,WriteData);
mux2 m(WriteData,ExtImm,ALUSrc,SrcB);
alu alu(SrcA,SrcB,ALUControl[2:0],ALUResultOut,ALUFlags);

endmodule
