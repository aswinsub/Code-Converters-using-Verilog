`timescale 1ns/1ps
module binary_to_gray(B3,B2,B1,B0,G3,G2,G1,G0);
    input B3,B2,B1,B0;
    output G3,G2,G1,G0;
    and a1(G3,B3,B3);
    xor x3(G2,B2,B3);
    xor x2(G1,B1,B2);
    xor x1(G0,B1,B0);
endmodule