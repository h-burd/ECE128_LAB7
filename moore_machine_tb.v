`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 03:02:59 PM
// Design Name: 
// Module Name: moore_machine_tb
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


module moore_machine_tb();

    reg P1;
    reg clk;
    reg reset;
    wire z;

    moore_machine uut (.P1(P1), .clk(clk), .reset(reset),.z(z) );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        P1 = 0;
        #10 reset = 0;
        P1 = 0;
        #10; P1 = 1;
        #10; P1 = 1;
        #10; P1 = 0;
        #10; P1 = 1;
        #10; P1 = 1;
        #10; P1 = 0;
        #10; P1 = 0;
        #10; P1 = 1;
        #10; P1 = 0;
        #10; P1 = 1;
        #10; P1 = 1;
        #10; P1 = 0;
        #10; P1 = 0;
        #10; P1 = 1;
        #10;
        $stop;
    end

endmodule
