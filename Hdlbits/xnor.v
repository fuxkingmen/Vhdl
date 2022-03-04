module xnor( 
    input a, 
    input b, 
    output out );
   assign	out=~( a ^ b);
   //同或门
endmodule