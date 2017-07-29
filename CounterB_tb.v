module CounterB_tb();

wire [1:0] AddrB;
reg Reset,IncB,clk;

CounterB MUT(IncB,Reset,clk,AddrB);

always
#5 clk = ~clk;

initial begin 
  clk = 1'b0;
  IncB = 1'b1;
  Reset = 1'b1;

  @(posedge clk) 
  begin
   #1 Reset = 1'b0;  
  end

  @(posedge clk)
  begin
    #1 IncB = 1'b1;
  end

  /*@(posedge clk)
  begin
    #1 IncB  = 1'b0;
  end

  @(posedge clk)
  begin
    #1 IncB  = 1'b1;
    #1 Reset  = 1'b1;
  end

 
  @(posedge clk)
  begin
    #1 Reset  = 1'b1;
  end

  @(posedge clk)
  begin
    #1 Reset  = 1'b0;
  end

@(posedge clk)
  begin
    #1 Reset  = 1'b0;
  end
*/

  
end

endmodule









