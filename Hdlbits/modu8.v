module modu8 ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);
wire [7:0]a,b,c;
my_dff8(clk,d,a);
my_dff8(clk,a,b);
my_dff8(clk,b,c);
always @(*)		// 组合逻辑always块 这里用十进制数表示sel
		case(sel)
			2'd0: q = d;
			2'd1: q = a;
			2'd2: q = b;
			2'd3: q = c;
		endcase
endmodule

