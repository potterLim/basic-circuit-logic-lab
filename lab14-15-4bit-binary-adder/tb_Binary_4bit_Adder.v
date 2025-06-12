`timescale 1ns / 1ps

module tb_Binary_4bit_Adder();

reg [3:0] A_in, B_in;
wire C_out;
wire [3:0] Y_out;

// Instantiate Device Under Test (DUT)
Binary_4bit_Adder DUT(
    .A(A_in),
    .B(B_in),
    .C(C_out),
    .Y(Y_out)
);

// Testbench initial block
initial begin
    // Apply initial test values
    // A_in = 3 (0011), B_in = 6 (0110)
    // Expect Y_out = 9 (1001), C_out = 0
    A_in = 4'b0011;
    B_in = 4'b0110;
end

endmodule
