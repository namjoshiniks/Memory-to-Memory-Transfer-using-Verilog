module Mux2_1(add,sub,sel,outdata);
   
  output [7:0] outdata;
  input [7:0] add,sub;
  input sel;
  reg [7:0] outdata;

 always@(add or sub or sel)
    if(sel == 1'b1)
	outdata  = add;
    else
	outdata = sub;
endmodule
