`timescale 1ns/1ps
module test_gray_to_binary;
    reg G3;
    reg G2;
    reg G1;
    reg G0;

    wire B3;
    wire B2;
    wire B1;
    wire B0;

    gray_to_binary uut(
        .G3(G3),
        .G2(G2),
        .G1(G1),
        .G0(G0),
        .B3(B3),
        .B2(B2),
        .B1(B1),
        .B0(B0)
    );
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        G3=0;
        G2=0;
        G1=0;
        G0=0;
        #60;

        G3=0;
        G2=0;
        G1=0;
        G0=1;
        #60;

        G3=0;
        G2=0;
        G1=1;
        G0=0;
        #60;

        G3=0;
        G2=0;
        G1=1;
        G0=1;
        #60;

        G3=0;
        G2=1;
        G1=0;
        G0=0;
        #60;

        G3=0;
        G2=1;
        G1=0;
        G0=1;
        #60;

        G3=0;
        G2=1;
        G1=1;
        G0=0;
        #60;

        G3=0;
        G2=1;
        G1=1;
        G0=1;
        #60;

        G3=1;
        G2=0;
        G1=0;
        G0=0;
        #60;

        G3=1;
        G2=0;
        G1=0;
        G0=1;
        #60;

        G3=1;
        G2=0;
        G1=1;
        G0=0;
        #60;

        G3=1;
        G2=0;
        G1=1;
        G0=1;
        #60;

        G3=1;
        G2=1;
        G1=0;
        G0=0;
        #60;

        G3=1;
        G2=1;
        G1=0;
        G0=1;
        #60;

        G3=1;
        G2=1;
        G1=1;
        G0=0;
        #60;

        G3=1;
        G2=1;
        G1=1;
        G0=1;
        #60;

    end
endmodule
