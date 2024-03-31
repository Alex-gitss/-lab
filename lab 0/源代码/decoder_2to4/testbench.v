`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/31 18:58:23
// Design Name: 
// Module Name: testbench
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


module testbench;

reg [1:0] in;
wire [3:0] out;

decoder_2to4 DUT(
    .in(in),
    .out(out)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    #10 in = 2'b00;
    #10 in = 2'b01;
    #10 in = 2'b10;
    #10 in = 2'b11;
    #10 in = 2'b00;

    $finish;
end

endmodule

