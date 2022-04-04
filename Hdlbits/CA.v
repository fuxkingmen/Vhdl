//Module Declaration
module CA(input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule