`timescale 1ns / 1ps

module LabAdd4bit( A, B, clk, rst, AN, Seg );

input [3:0] A;
input [3:0] B;
input clk, rst;
output [7:0] AN;
output [7:0] Seg;

wire [3:0] carry, sum;
assign carry[3:1]=3'b000;

Binary_4bit_Adder U1 (.A(A), .B(B), .C(carry[0]), .Y(sum));
Dsp7Seg U2 (.X0(A), .X1(B), .X2(carry), .X3(sum), .clk(clk), .rst(rst), .AN(AN), .dsp(Seg));

endmodule
