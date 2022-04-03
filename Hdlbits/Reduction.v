module Reduction(
    input [7:0] in,
    output parity); 

    assign parity = ^in;
    
endmodule