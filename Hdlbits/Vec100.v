module Vec100( 
    input [99:0] in,
    output [99:0] out
);

    always@(*)begin
        for (int i=0;i<=99;i=i+1)begin
            out[i]=in[99-i];
        end
    end
    
endmodule
