module Delay_DFF_tb();

reg [7:0] DataIn;
reg clk;
wire [7:0] DataOut;

Delay_DFF MUT(DataOut,DataIn,clk);

always
#5 clk = ~clk;

initial begin
clk = 1'b0;
 @(posedge clk)
 begin
   DataIn = 8'b00100011;
 end

@(posedge clk)
 begin
   DataIn = 8'b00101111;
 end

 @(posedge clk)
 begin
   DataIn = 8'b11100011;
 end
end



endmodule
