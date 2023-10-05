`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:07:00
// Design Name: 
// Module Name: flopr
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
module flopr 
 (input logic clk, reset,
 input logic [7:0] d, 
 output logic [7:0] q); 
 always_ff @(posedge clk, posedge reset) 
 if (reset) q <= 0; 
 else q <= d; 
endmodule
