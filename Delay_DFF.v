module Delay_DFF(DataOut,DataIn,clk);

input [7:0] DataIn;
input clk;
output [7:0] DataOut;
reg [7:0] DataOut;

always@(posedge clk)
begin
   DataOut <= DataIn;
end

endmodule
