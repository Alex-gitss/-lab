`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/31 19:17:57
// Design Name: 
// Module Name: mod_18_counter
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


module mod_18_counter(
    input clk,
    input rst,
    input enable,
    output reg [4:0] count
);

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        count <= 5'b00000;
    end
    else if (enable) begin
        if (count == 5'b10001) begin
            count <= 5'b00000;
        end
        else begin
            count <= count + 1;
        end
    end
end

endmodule

