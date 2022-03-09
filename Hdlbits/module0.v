module module0( input a, input b, output out );
        mod_a C_mod_a(
          .in1(a)
        , .in2(b)
        , .out(out));
    //mod_a C_mod_a(a, .b, out); //使用按照端口顺序的方式 声明信号连接
endmodule
