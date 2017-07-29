module CounterA(IncA,Reset,clk,AddrA);

input IncA,Reset,clk;
output [2:0] AddrA;
reg [2:0] AddrA;






always@(posedge clk)
 begin
  if(Reset)
  begin
  AddrA = 3'b000;
  end
  else if(IncA)
  begin
	AddrA <= AddrA + 3'b001; 
  end    
 end

endmodule