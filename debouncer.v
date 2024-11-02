`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 02:09:13 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer(input RAW, input CLK, output reg CLEAN);
    reg [2:0] counter;
    wire TC;
    
    always @ (posedge CLK) begin
        if(~RAW)
            counter <= 3'b000;
        else
            counter <= counter + 3'b001;       
    end
        
    assign TC = (counter == 3'b111);
    
    always @ (posedge CLK) begin
        if(~RAW)
            CLEAN <= 1'b0;
        else
            CLEAN <= 1'b1;      
    end
        
        
endmodule
