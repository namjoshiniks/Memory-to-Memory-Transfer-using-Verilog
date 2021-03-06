module CounterA_tb();

wire [2:0] AddrA;
reg Reset,IncA,clk;

CounterA MUT(IncA,Reset,clk,AddrA);

always
#5 clk = ~clk;

initial begin 
  clk = 1'b0;
  IncA = 1'b1;
  Reset = 1'b1;

  @(posedge clk) 
  begin
    Reset = 1'b0;  
  end

  @(posedge clk)
  begin
     IncA = 1'b1;
  end

  /*@(posedge clk)
  begin
     IncA  = 1'b0;
  end

  @(posedge clk)
  begin
     IncA  = 1'b1;
  end

 
  @(posedge clk)
  begin
     Reset  = 1'b0;
  end

  @(posedge clk)
  begin
     Reset  = 1'b1;
  end*/


  
end

endmodule









