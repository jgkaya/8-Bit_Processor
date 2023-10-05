`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:06:18
// Design Name: 
// Module Name: aludec
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
module aludec( input logic [2:0] func,
input logic [1:0] ALUOp,
output logic [2:0] ALUControl);
always@(*)
case(ALUOp)
2'b00:ALUControl<=3'b000;//add
2'b01:ALUControl<=3'b001;//sub
default:case(func)
3'b000:ALUControl<=3'b000; //ADD
3'b010:ALUControl<=3'b001; //SUB
3'b100:ALUControl<=3'b010; //AND
3'b101:ALUControl<=3'b011; //ORR
default: ALUControl<=3'bxxx;
endcase
endcase
endmodule
