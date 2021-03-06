module Adder_tb();

wire [7:0] ADDOut;
reg [7:0] DOut1,DOut2;
reg clk;

Adder MUT(ADDOut,DOut1,DOut2);

always
#5 clk = ~clk;

initial begin
 clk = 1'b1;
 DOut1 = 8'b00000000;
 DOut2 = 8'b00000000;

 @(posedge clk)
 begin
   DOut1 = 8'b00001000;
   DOut2 = 8'b00000011;
 end

@(posedge clk)
 begin
   DOut1 = 8'b00001011;
   DOut2 = 8'b00011100;
 end

@(posedge clk)
 begin
   DOut1 = 8'b00011011;
   DOut2 = 8'b01010011;
 end

@(posedge clk)
 begin
   DOut1 = 8'b10000001;
   DOut2 = 8'b10000011;
 end
 
@(posedge clk)
 begin
   DOut1 = 8'b11011011;
   DOut2 = 8'b11010011;
 end


@(posedge clk)
 begin
   DOut1 = 8'b01011011;
   DOut2 = 8'b11100011;
 end
end
endmodule

