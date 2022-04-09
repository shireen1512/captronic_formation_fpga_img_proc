module simple_adder(
  input logic [63:0] a,
  input logic [63:0] b,
  output logic [63:0] sum 
);
assign sum = a + b;

endmodule