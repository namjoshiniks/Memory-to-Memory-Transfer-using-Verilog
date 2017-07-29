module Subtracter(SUBOut,DOut2,DOut1);

input [7:0] DOut1,DOut2 ;
output [7:0] SUBOut;
reg [7:0] DOut1_2sComm,SUBOut;


always@(DOut1 or DOut2)
begin
   DOut1_2sComm = (~DOut1) + 8'b00000001;
   SUBOut = DOut1_2sComm + DOut2;
   if((DOut1_2sComm[7] == DOut2[7]) && (DOut2[7] != SUBOut[7]))
	SUBOut = 8'b00000000;
end

endmodule

