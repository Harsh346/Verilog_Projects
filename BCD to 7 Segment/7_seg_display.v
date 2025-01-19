`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Harsh Kumar Singh
// 
// Create Date: 12.01.2025 15:36:49
// Design Name: 7 segment display
// Module Name: 7_seg_display
// Project Name: Board Bring Up
// Target Devices: Spartan 7
// Tool Versions: 2024.1
// Description: This module uses switch based user input to display BCD on the 7 segment display on spartan 7 board.
//  
// Dependencies: The bits assigned to 7 segments are as follows:-
//        _
//      2|_|6
//      3|_|5
//        4
// Values need to be coded for numbers 0 to 9 accordingly.
// Revision: 0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BCD_to_7seg(
    input [3:0] BcdIn,
    input [3:0] digit_sel,
    input clk,
    output reg [3:0] digit,
    output reg [7:0] Seven_Segment
    );
    always @(posedge clk) begin
    digit <= digit_sel;
//    case(digit_sel)
//        4'b0000: digit <= 4'b0000;
//        4'b0010: digit <= 4'b0010;
//        4'b0000: digit <= 4'b0000;
//        4'b0000: digit <= 4'b0000;
//        default: digit <= 4'b0000;
//    endcase
    case(BcdIn)
        4'd0: Seven_Segment <= 8'b00000011;
        4'd1: Seven_Segment <= 8'b10011111;
        4'd2: Seven_Segment <= 8'b00100101;
        4'd3: Seven_Segment <= 8'b00001101;
        4'd4: Seven_Segment <= 8'b10011001;
        4'd5: Seven_Segment <= 8'b01001001;
        4'd6: Seven_Segment <= 8'b01000001;
        4'd7: Seven_Segment <= 8'b00011011;
        4'd8: Seven_Segment <= 8'b00000001;
        4'd9: Seven_Segment <= 8'b00001001;
        default: Seven_Segment <= 8'b11111111;
    endcase
        
    end
endmodule
