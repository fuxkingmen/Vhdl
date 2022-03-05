module decwire( 
    input a, 
    input b, 
    input c,
    input d,
    output out,
    output out_n );
   wire nota = a&b;
   wire notb = c&d;
   assign out = nota | notb;
   assign out_n = ~(nota | notb);
   //同或门
endmodule