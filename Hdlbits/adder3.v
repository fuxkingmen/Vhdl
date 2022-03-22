module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
wire carry;
wire [31:16]sum0;
wire [31:16]sum1;
add16 a1(a[15:0],b[15:0],1'b0,sum[15:0],carry);
add16 a2(a[31:16],b[31:16],1'b0,sum0[31:16],);
add16 a3(a[31:16],b[31:16],1'b1,sum1[31:16],);

assign sum[31:16] = carry?sum1:sum0;
endmodule