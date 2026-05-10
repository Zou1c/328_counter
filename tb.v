`timescale 1ns/1ns

module tb;

    reg Clk;

    reg s_b1;
    wire Led1;
    wire Led2;
    wire Led3;
    wire Led4;
    
    decoder_3_8 t1(
        .Clk(Clk),
        .b1(s_b1),
        .Led1(Led1),
        .Led2(Led2),
        .Led3(Led3),
        .Led4(Led4)
    );
    
    initial Clk = 1;
    always #10 Clk = !Clk;
    
    initial begin
        #500; // default
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //1
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //2
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //3
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //4
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //5
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //6
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //7
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //8
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //return to defalu
        
        s_b1 = 1;
        #200;
        s_b1 = 0;
        #200;    //and 1
        
    end
    
endmodule