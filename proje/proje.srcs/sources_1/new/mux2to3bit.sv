`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2021 00:30:46
// Design Name: 
// Module Name: mux2to3bit
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
module mux2to3bit 
 (input logic [2:0] d0, d1, 
 input logic s, 
 output logic [2:0] y); 
 assign y = s ? d1 : d0; 
endmodule
