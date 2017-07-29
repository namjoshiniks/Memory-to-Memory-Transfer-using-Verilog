module MemoryA(clk,AddrA,WEA,DataInA,DataOut);

input [2:0] AddrA;
input WEA,clk;
input [7:0] DataInA;
output [7:0] DataOut;
reg [7:0] DataOut;
reg [7:0] MemBank [7:0]; 

always@(posedge clk)
begin
   if(WEA)
   begin
	MemBank[AddrA] <= DataInA;
   end
   else if(!WEA)
   begin
	
	DataOut <= MemBank[AddrA];
   end
end
endmodule
