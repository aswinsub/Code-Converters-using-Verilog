`timescale 1ns/1ps
module gray_to_binary(G3,G2,G1,G0,B3,B2,B1,B0);
    input G3,G2,G1,G0;
    output B3,B2,B1,B0;
    wire w1,w2;
    xor x1(w1,G0,G1);
    xor x3(w2,G2,G3);
    xor x2(B0,w1,w2);
    xor x4(B1,G1,G2,G3);
    xor x5(B2,G2,G3);
    and a1(B3,G3,G3);
endmodule