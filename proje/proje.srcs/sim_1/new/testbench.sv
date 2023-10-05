`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:12:57
// Design Name: 
// Module Name: testbench
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
module testbench();
logic clk,reset;
logic [7:0] WriteData,DataAdr;
logic MemWrite;
// instantiate device to be tested 
 top dut(clk, reset, WriteData, DataAdr, MemWrite); 
// initialize test
initial
begin
reset <= 1; # 22; reset <= 0;
end
always
begin
clk <= 1; # 5; clk <= 0; # 5;
end
always @(negedge clk)
begin
if(MemWrite) begin
if(DataAdr === 100 & WriteData === 7) begin
$stop;
end else if (DataAdr !== 96) begin
$stop;
end
end
end
endmodule
