module adders(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] result
);
    
    wire [31:0] b_n;
    wire carry;
    
    assign b_n = b^{32{sub}};
    
    add16 a0(a[15:0],b_n[15:0],sub,result[15:0],carry);
    add16 a1(a[31:16],b_n[31:16],carry,result[31:16],);
    
endmodule
