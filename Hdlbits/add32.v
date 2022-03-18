module add32(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
wire c;
add16 a1(a[15:0],b[15:0],1'b0,sum[15:0],c);
add16 a2(.a(a[31:16])
         ,.b(b[31:16])
         ,.cin(c)
         ,.sum(sum[31:16])
         ,.cout());
endmodule
