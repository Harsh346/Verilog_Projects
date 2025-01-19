`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 12:51:36
// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(
    input A,
    input B,
    input C,
    output [0:7] R
    );
    wire w0;
    wire w1;
    wire w2;
    wire w3;
    wire w4;
    wire w5;
    wire w6;
    wire w7;
    and(w0,~A,~B,~C);and(w1,~A,~B,C);and(w2,~A,B,~C);and(w3,~A,B,C);
    and(w4,A,~B,~C);and(w5,A,~B,C);and(w6,A,B,~C);and(w7,A,B,C);
    assign R[0] = w0;assign R[1] = w1;assign R[2] = w2;assign R[3] = w3;
    assign R[4] = w4;assign R[5] = w5;assign R[6] = w6;assign R[7] = w7;
endmodule
