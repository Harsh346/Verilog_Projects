`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 12:49:41
// Design Name: 
// Module Name: Mult
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


module Multiplier(
    input [2:0] A,
    input [2:0] B,
    output [5:0] R
    );
    wire w1; wire w2; wire w3; wire w4; wire w5; wire w6; wire w7; wire w8; wire w9;
    and(w1,A[0],B[0]);and(w2,A[1],B[0]);and(w3,A[0],B[1]);and(w4,A[0],B[2]);
    and(w5,A[1],B[1]);and(w6,A[2],B[0]);and(w7,A[2],B[1]);and(w8,A[1],B[2]);and(w9,A[2],B[2]); 
    assign R[0] = w1;
//    wire ch1;
//    half_adder h1(w2,w3,R[1],ch1);
//    assign R[2] = ch1;
//    wire sh2; wire ch2;
//    half_adder h2(w7,w8,sh2,ch2);
//    wire cfh;
//    wire c3;
//    half_adder h3(sh2,c3,R[4],cfh);
//    wire s1, c2;
//    full_adder f1(w4,w5,w6,s1,c2);
//    full_adder f2(s1,c2,ch1,R[3],c3);
//    full_adder f4(w9,sh2,cfh,R[5],R[6]);
    wire ch1;
    half_adder h1(w2,w3,R[1],ch1);
//    assign R[2] = ch1;
    wire sh2; wire ch2;
    half_adder h2(w7,w8,sh2,ch2);
    wire cf2;
    wire cf3;
    half_adder h3(cf3,w9,R[4],R[5]);
    wire sf1, cf1;
    full_adder f1(w4,w5,w6,sf1,cf1);
    full_adder f2(sf1,cf1,ch1,R[2],cf2);
    full_adder f3(ch2,sh2,cf2,R[3],cf3);
endmodule