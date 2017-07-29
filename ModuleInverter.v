module ModuleInverter(
MyInput,
MyOutput
);

input MyInput;
output MyOutput;

assign MyOutput = ~ MyInput;

endmodule
