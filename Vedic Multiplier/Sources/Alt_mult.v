`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 18:41:18
// Design Name: 
// Module Name: Alt_mult
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


module Alt_mult(
    input [2:0] A,
    input [2:0] B,
    output [5:0] R
    );
    wire w1; wire w2; wire w3; wire w4; wire w5; wire w6; wire w7; wire w8; wire w9;
    and(w1,A[0],B[0]);and(w2,A[1],B[0]);and(w3,A[0],B[1]);and(w4,A[0],B[2]);
    and(w5,A[1],B[1]);and(w6,A[2],B[0]);and(w7,A[2],B[1]);and(w8,A[1],B[2]);and(w9,A[2],B[2]); 
    
    assign R[0] = w1;
    wire ch1;
    half_adder h1(w2,w3,R[1],ch1);
    wire sf1, cf1;                  
    full_adder f1(w4,w5,w6,sf1,cf1);
    wire ch2; wire s; wire c; wire sh3; wire ch3; wire ch4; wire sf2; wire cf2;
    half_adder h2(sf1,ch1,R[2],ch2);
    half_adder h(cf1,ch2,s,c);
    half_adder h3(w7,w8,sh3,ch3);
    half_adder h4(s,sh3,R[3],ch4);
    full_adder f2(c,ch3,ch4,sf2,cf2);
    wire ch5;
    half_adder h5(sf2,w9,R[4],ch5);
    wire ch6;
    half_adder h6(cf2,ch5,R[5],ch6);
    
//    wire cf2;
//    full_adder f2(sf1,cf1,ch1,R[3],cf2);
//    wire sh2; wire ch2;
//    half_adder h2(w7,w8,sh2,ch2);
//    wire cf3; wire ch3;
//    half_adder h3(cf2,sh2,R[4],ch3);
//    full_adder f3(ch2,w9,ch3,R[5],R[6]);
endmodule