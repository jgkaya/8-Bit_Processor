`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:03:22
// Design Name: 
// Module Name: arm
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
module arm(input logic clk, reset, 
 output logic [7:0] PC, 
 input logic [15:0] Instr, 
 output logic MemWrite, 
 output logic [7:0] DataAdr, WriteData, 
 input logic [7:0] ReadData); 
 logic [3:0] ALUFlags; 
 logic RegWrite,ALUSrc, MemtoReg, PCSrc;  
 logic [2:0] ALUControl;  
 logic Jump,RegDst;
 controller c(Instr[15:12], Instr[2:0], ALUFlags[3],MemtoReg,MemWrite,PCSrc,ALUSrc,RegDst,RegWrite,Jump,ALUControl);
 path dp(clk, reset, RegDst, RegWrite, ALUSrc,ALUControl,MemtoReg,PCSrc, ALUFlags, PC, Instr,DataAdr, WriteData, ReadData,Jump); 
endmodule 
