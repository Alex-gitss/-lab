`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/31 19:18:50
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

reg clk;
reg rst;
reg enable;
wire [4:0] count;

mod_18_counter DUT(
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .count(count)
);

initial begin
    clk = 0;
    rst = 1;
    enable = 0;
    
    #10 rst = 0;

    // Test 1: Reset
    #20 rst = 1;
    #10 rst = 0;

    // Test 2: Count without enable
    #20 enable = 0;
    #50;

    // Test 3: Count with enable
    #20 enable = 1;
    #100;

    // Test 4: Count overflow
    #20 enable = 1;
    #100;

    $finish;
end

always #5 clk = ~clk;

endmodule

