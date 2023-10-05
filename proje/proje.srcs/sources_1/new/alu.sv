`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2021 23:08:17
// Design Name: 
// Module Name: alu
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
module alu(input logic [7:0] A,B,
input logic [2:0] alucontrol,
output logic [7:0] result,
output logic [3:0] flags);
logic Zero,Negative,Carry,oVerflow;
wire [7:0] n,sum,D,C;
wire Cout;
assign C=A|B;
assign D=A&B;
mux2 first(B,~B,alucontrol[0],n);
NbitFulladder second (A,n,alucontrol[0],sum,Cout);
mux4 third (sum,sum,D,C,alucontrol,result);
 always_comb 
 casex (alucontrol[2:0]) 
 3'b000: result = A+B; 
 3'b010: result = A-B;
 3'b100: result = A & B; 
 3'b101: result = A | B; 
 endcase 
assign Zero=&(~result);
assign Negative=result[7];
assign Carry= ~alucontrol[1] & Cout;
assign oVerflow=((~alucontrol[1])&(sum[7]^A[7])&(~(B[7]^A[7]^alucontrol[0])));
assign flags={Zero,Negative,Carry,oVerflow};
endmodule
