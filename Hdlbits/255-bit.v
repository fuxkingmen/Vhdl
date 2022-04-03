module 255-bit( 
    input [254:0] in,
    output [7:0] out );
    integer ; i;

    always @ (*)
        begin
            out = 8'b0000_0000;     //为了后面的计数累加，此处先初始化为0.
            for (i=0; i<255; i++)
                begin
                    if(in[i] == 1'b1)
                        out = out + 1'b1;
                    else
                        out = out + 1'b0;
                end
        end

endmodule
