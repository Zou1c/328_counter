module decoder_3_8(
    Clk,

    b1,
    
    Led1,Led2,Led3,Led4,
);
    input Clk;
    reg tick;
    reg[25:0] counter;
    reg[26:0] continus_counter;
    
    input b1;
    reg mode;
    reg[3:0] num;
    output reg Led1;
    output reg Led2;
    output reg Led3;
    output reg Led4;
    
    initial num = 4'b0000;
    initial mode = 0;  // TODO: by pressing b1 to change it
    initial counter = 0;
    initial continus_counter = 0;
    
    always@(posedge Clk)begin
        if(counter == 49999999) // 50MHZ , 20ns a clock, 1000ms
            counter <= 0;
        else 
            counter <= counter + 1'd1;
        if(mode==1)begin
            if(counter==0)begin
                Led1=0;
                Led2=1;
                Led3=1;
                Led4=1;
            end
            else if(counter == 12499999)begin
                Led1=1; 
                Led2=0;
                Led3=1;
                Led4=1;
            end
            else if(counter == 24999999)begin
                Led1=1; 
                Led2=1;
                Led3=0;
                Led4=1;
            end
            else if(counter == 37499999)begin
                Led1=1;
                Led2=1;
                Led3=1;
                Led4=0;
            end
        end
        else if(mode==0)begin
            case(num)
                4'b0000:begin
                    Led1=0;
                    Led2=0;
                    Led3=0;
                    Led4=0;
                end
                4'b0001:begin
                    Led1=0;
                    Led2=1;
                    Led3=0;
                    Led4=1;
                end
                4'b0010:begin
                    Led1=1;
                    Led2=0;
                    Led3=1;
                    Led4=0;
                end
                4'b0011:begin
                    Led1=0;
                    Led2=0;
                    Led3=0;
                    Led4=1;
                end
                4'b0100:begin
                    Led1=1;
                    Led2=0;
                    Led3=0;
                    Led4=0;
                end
                4'b0101:begin
                    Led1=0;
                    Led2=1;
                    Led3=1;
                    Led4=1;
                end
                4'b0110:begin
                    Led1=1;
                    Led2=0;
                    Led3=1;
                    Led4=1;
                end
                4'b0111:begin
                    Led1=1;
                    Led2=1;
                    Led3=0;
                    Led4=1;
                end
                4'b1000:begin
                    Led1=1;
                    Led2=1;
                    Led3=1;
                    Led4=0;
                end
            endcase
        end
    end
    
    always@(posedge b1)begin
        if(mode==0)begin
            if(num == 4'b1000)
                num <= 4'b0000;
            else
                num <= num + 1'd1;
        end
    end
    

    
    
    // pay attention, Led's value: 0 means led lights on, 1 means led turn off
    

endmodule