`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:07:30
// Design Name: 
// Module Name: regfile
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
module regfile( 
    input logic clk, WE3,
    input logic [2:0] A1, A2, A3,
    input logic [7:0] WD3,
    output logic [7:0] RD1, RD2
);

reg [7:0] rf [7:0];

initial rf[0] =  8'b0000;
initial rf[1] =  8'b0001;
initial rf[2] =  8'b0010;
initial rf[3] =  8'b0011;
initial rf[4] =  8'b0100;
initial rf[5] =  8'b0101;
initial rf[6] =  8'b0110;
initial rf[7] =  8'b0111;

assign RD1 = rf[A1];
assign RD2 = rf[A2];
    
    
always @ (posedge clk)
begin
    if(WE3)
       rf[A3] <= #5 WD3;

end
endmodule
