`timescale 1ns/1ps
module test_binary_to_gray;
    reg B3;
    reg B2;
    reg B1;
    reg B0;

    wire G3;
    wire G2;
    wire G1;
    wire G0;

    binary_to_gray uut(
        .B3(B3),
        .B2(B2),
        .B1(B1),
        .B0(B0),
        .G3(G3),
        .G2(G2),
        .G1(G1),
        .G0(G0)
    );
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);

        B3=0;
        B2=0;
        B1=0;
        B0=0;
        #60;

        B3=0;
        B2=0;
        B1=0;
        B0=1;
        #60;

        B3=0;
        B2=0;
        B1=1;
        B0=0;
        #60;

        B3=0;
        B2=0;
        B1=1;
        B0=1;
        #60;

        B3=0;
        B2=1;
        B1=0;
        B0=0;
        #60;

        B3=0;
        B2=1;
        B1=0;
        B0=1;
        #60;

        B3=0;
        B2=1;
        B1=1;
        B0=0;
        #60;

        B3=0;
        B2=1;
        B1=1;
        B0=1;
        #60;

        B3=1;
        B2=0;
        B1=0;
        B0=0;
        #60;

        B3=1;
        B2=0;
        B1=0;
        B0=1;
        #60;

        B3=1;
        B2=0;
        B1=1;
        B0=0;
        #60;

        B3=1;
        B2=0;
        B1=1;
        B0=1;
        #60;

        B3=1;
        B2=1;
        B1=0;
        B0=0;
        #60;

        B3=1;
        B2=1;
        B1=0;
        B0=1;
        #60;

        B3=1;
        B2=1;
        B1=1;
        B0=0;
        #60;

        B3=1;
        B2=1;
        B1=1;
        B0=1;
        #60;

    end
endmodule
