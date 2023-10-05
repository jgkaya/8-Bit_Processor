`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:03:51
// Design Name: 
// Module Name: imem
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
module imem(input logic [7:0] a, 
 output logic [15:0] rd);

reg [15:0] im_array[7:0];
initial
begin
im_array[0]= 16'b0000010011000000; 
im_array[1]= 16'b0000011100001010; 
im_array[2]= 16'b0000010110011100; 
im_array[3]= 16'b0000011010111101;
im_array[4]= 16'b0100000011000001;
im_array[5]= 16'b1011001100000001;
im_array[6]= 16'b1111000101000001;
im_array[7]= 16'b1000001110000001; 
end
assign rd = im_array[a]; // word aligned 

endmodule
