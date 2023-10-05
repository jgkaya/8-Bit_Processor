`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:04:14
// Design Name: 
// Module Name: dmem
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
module dmem(input logic clk, we, 
 input logic [7:0] a, wd, 
 output logic [7:0] rd); 
reg [7:0] RAM[7:0]; 
 assign rd = RAM[a]; // word aligned 
 always_ff @(posedge clk) 
 if (we) RAM[a] <= wd;

endmodule
