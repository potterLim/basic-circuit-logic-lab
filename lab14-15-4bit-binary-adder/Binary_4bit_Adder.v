`timescale 1ns / 1ps

module Binary_4bit_Adder ( A, B, C, Y );

input [3:0] A, B;
output C;
output [3:0] Y;

wire C1, C2, C3;

// 1st Full Adder: add LSB bits and initial carry-in (0)
Full_Adder U0( .x(A[0]), .y(B[0]), .z(1'b0), .C(C1), .S(Y[0]) );

// 2nd Full Adder: add bit 1 with carry from previous stage
Full_Adder U1( .x(A[1]), .y(B[1]), .z(C1),   .C(C2), .S(Y[1]) );

// 3rd Full Adder: add bit 2 with carry from previous stage
Full_Adder U2( .x(A[2]), .y(B[2]), .z(C2),   .C(C3), .S(Y[2]) );

// 4th Full Adder: add MSB bits with carry from previous stage
Full_Adder U3( .x(A[3]), .y(B[3]), .z(C3),   .C(C),  .S(Y[3]) );

endmodule
