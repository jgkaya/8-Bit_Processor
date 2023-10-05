`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:08:04
// Design Name: 
// Module Name: shifter
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
module shifter(input  logic [7:0] a,

 output logic [7:0] y);
logic shtype;
 // shift left by 2
always_comb
case(shtype)
2'b00:y=a<<2'b10;
default:y=a;
endcase
endmodule
