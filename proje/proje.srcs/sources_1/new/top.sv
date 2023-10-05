`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:02:54
// Design Name: 
// Module Name: top
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
module top(input logic clk, reset, 
 output logic [7:0] WriteData, DataAdr, 
 output logic MemWrite); 
 logic [7:0] PC,  ReadData; 
 logic [15:0] Instr;
 // instantiate processor and memories 
 arm arm(clk, reset, PC, Instr, MemWrite, DataAdr, 
 WriteData, ReadData); 
 imem imem(PC, Instr);
 dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData);
endmodule
