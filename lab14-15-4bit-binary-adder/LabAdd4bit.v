`timescale 1ns / 1ps

module LabAdd4bit( A, B, clk, rst, AN, Seg );

input [3:0] A;
input [3:0] B;
input clk, rst;
output [7:0] AN;
output [7:0] Seg;

wire [3:0] carry, sum;

// Initialize carry bits except carry[0] (used as initial carry-in)
assign carry[3:1]=3'b000;

// Instantiate 4-bit Binary Adder
// Inputs: A, B
// Output: sum (Y), carry-out as carry[0]
Binary_4bit_Adder U1 (.A(A), .B(B), .C(carry[0]), .Y(sum));

// Instantiate 7-Segment Display driver
// Display order: X0=A, X1=B, X2=carry, X3=sum
// X4~X7 are unused (default inactive)
// Displays inputs and result on 7-segment display
Dsp7Seg U2 (.X0(A), .X1(B), .X2(carry), .X3(sum), .clk(clk), .rst(rst), .AN(AN), .dsp(Seg));

endmodule
