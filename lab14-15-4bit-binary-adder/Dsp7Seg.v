`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 7-Segment Display for Nexys4 DDR
// Coded by Youngsik Kim @2018.05.05
// Input                     Outputs
// X0-X7 -->			---> dsp[7:0]
// clk ---->       Module
// rst ---->			---> AN[7:0]
//////////////////////////////////////////////////////////////////////////////////

module Dsp7Seg(
    input [3:0] X0,
    input [3:0] X1,
    input [3:0] X2,
    input [3:0] X3,
    input [3:0] X4,
    input [3:0] X5,
    input [3:0] X6,
    input [3:0] X7,
    input clk,
    input rst,
    output reg [7:0] dsp,
    output reg [7:0] AN
    );
    
    reg [19:0] ref_cnt;	// refresh counter 100MHz
    wire [2:0] act_AN; 	// activate AN one of the eight
    reg [3:0] LED_BCD;	// Bianry Coded Decimal
	
    // Clock counter ticking with 100MHz input clock
    // Used to generate slower timing for display multiplexing
    always @(posedge clk or posedge rst) begin
        if (rst==1)
            ref_cnt <=0;
        else
            ref_cnt <= ref_cnt +1;
    end
	
	// Generate active digit selector (3-bit value to select AN)
	// 100MHz / 2^17 ~ 1.31 ms x 8 = ~95Hz refresh rate
    assign act_AN = ref_cnt[19:17];	
	
	// Periodically activate each 7-segment digit
	// Rotates through X0 ~ X7, displaying one digit at a time
    always @(*) begin
        case(act_AN)
        3'b000: begin
            AN = 8'b0111_1111;		//7F : Activate AN0
            LED_BCD = X0;
        end
        
        3'b001: begin
            AN = 8'b1011_1111;      // Activate AN1
            LED_BCD = X1;
        end
        
        3'b010: begin
            AN = 8'b1101_1111;      // Activate AN2
            LED_BCD = X2;
        end
        
        3'b011: begin
            AN = 8'b1110_1111;      // Activate AN3
            LED_BCD = X3;
        end
        
        3'b100: begin
            AN = 8'b1111_0111;      // Activate AN4
            LED_BCD = X4;
        end
        
        3'b101: begin
            AN = 8'b1111_1011;      // Activate AN5
            LED_BCD = X5;
        end
        
        3'b110: begin
            AN = 8'b1111_1101;      // Activate AN6
            LED_BCD = X6;
        end
        
        3'b111:begin
            AN = 8'b1111_1110;      // Activate AN7
            LED_BCD = X7;
        end
        endcase      
    end
    
    // BCD to 7-segment display encoding
    // Converts 4-bit binary input into segment control signals
    always @(*) begin
        case(LED_BCD)
            4'b0000: dsp = 8'b1000_0001;    //0 : 0x81
            4'b0001: dsp = 8'b1100_1111;    //1 : 0xCF
            4'b0010: dsp = 8'b1001_0010;    //2 : 0x92
            4'b0011: dsp = 8'b1000_0110;    //3 : 0x86
            4'b0100: dsp = 8'b1100_1100;    //4 : 0xCC
            4'b0101: dsp = 8'b1010_0100;    //5 : 0xA4
            4'b0110: dsp = 8'b1010_0000;    //6 : 0xA0
            4'b0111: dsp = 8'b1000_1111;    //7 : 0x8F
            4'b1000: dsp = 8'b1000_0000;    //8 : 0x80
            4'b1001: dsp = 8'b1000_0100;    //9 : 0x84
            4'b1010: dsp = 8'b1000_0010;    //a : 0x82
            4'b1011: dsp = 8'b1110_0000;    //b : 0xE0
            4'b1100: dsp = 8'b1111_0010;    //c : 0xF2
            4'b1101: dsp = 8'b1100_0010;    //d : 0xC2
            4'b1110: dsp = 8'b1001_0000;    //e : 0x90
            4'b1111: dsp = 8'b1011_1000;    //f : 0xB8
        endcase
    end
    
endmodule
