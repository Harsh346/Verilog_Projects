`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 02:22:17
// Design Name: 
// Module Name: Mult_12x12
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


module Mult_12x12(
    input [11:0] a,
    input [11:0] b,
    output [23:0] r
    );
    wire [11:0] w1; wire [11:0] w2; wire [11:0] w3; wire [11:0] w4; 
        Mult_6x6 m1(a[5:0], b[5:0], w1);
        Mult_6x6 m2(a[11:6], b[5:0], w2);
        Mult_6x6 m3(a[5:0], b[11:6], w3);
        Mult_6x6 m4(a[11:6], b[11:6], w4);
    
        wire [11:0]w5; wire c1; wire [11:0]w6; wire [11:0]w7; wire c2; wire [11:0]w8; wire [11:0]w9; wire c3; wire c;
        RCA2 r1(w2,w3,w5,c1);
        assign w6={6'b0, w1[11:6]};
        RCA2 r2(w5,w6,w7,c2);
    //    assign w8={3'b0, w7[5:3]};
        or(c,c1,c2);
        assign w8= {5'b0, c, w7[11:6]};
        RCA2 r3(w4,w8,w9,c3);
        assign r = {w9, w7[5:0], w1[5:0]};
endmodule
