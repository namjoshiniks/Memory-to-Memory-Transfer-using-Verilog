module Adder(ADDOut,DOut2,DOut1);

input [7:0] DOut1,DOut2 ;
output [7:0] ADDOut;
reg [7:0] ADDOut;


always@(DOut1 or DOut2)
begin
   ADDOut = DOut1 + DOut2;
   if((DOut1[7] == DOut2[7]) && (DOut2[7] != ADDOut[7]))
	ADDOut = 8'b00000000;
end

endmodule

