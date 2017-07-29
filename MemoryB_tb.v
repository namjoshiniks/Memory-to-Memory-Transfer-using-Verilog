module MemoryB_tb();

reg [1:0] AddrB;
reg WEB;
reg [7:0] DataInB;
reg clk;
wire [7:0] DataOut;

MemoryB MUT(AddrB,WEB,DataInB,DataOut);

always
#5 clk = ~clk;

initial begin
 clk = 1'b0;

@(posedge clk)
begin
  WEB = 1'b1;
  DataInB = 8'b00100011;
  AddrB = 2'b00;
  
end

@(posedge clk)
begin
  DataInB = 8'b10000111;
  AddrB = 2'b01;
  
end

@(posedge clk)
begin
  DataInB = 8'b10110111;
  AddrB = 2'b10;
  
end

@(posedge clk)
begin
  DataInB = 8'b11010111;
  AddrB = 2'b11;
  
end

@(posedge clk)
begin
  WEB = 1'b0;
  AddrB = 2'b00;
end

@(posedge clk)
begin
  AddrB = 2'b01;
end

@(posedge clk)
begin
  AddrB = 2'b10;
end

@(posedge clk)
begin
  AddrB = 2'b11;
end
end



endmodule
