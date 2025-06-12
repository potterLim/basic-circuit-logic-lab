`timescale 1ns / 1ps

module Full_Adder ( x, y, z, C, S) ;

input x, y, z;
output C, S;

wire net1, net2, net3;

// net1: XOR of x and y
assign net1 = x ^ y;

// net2: Carry generated from x and y
assign net2 = x & y;

// S: Final sum output (XOR of net1 and z)
assign S = net1 ^ z;

// net3: Carry generated from net1 and z
assign net3 = net1 & z;

// C: Final carry-out (OR of carries net2 and net3)
assign C = net3 | net2;

endmodule
