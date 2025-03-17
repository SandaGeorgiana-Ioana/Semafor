module test_bench;

    parameter count_to = 8'd64;  // 25 MHz clock, 1 second = 25 million cycles
  
 //intrari dut
    reg clk;    
    reg rst;   
    reg buton;   
   //iesiri dut
    wire [23:0] count_semafor;
    wire rosu, verde, galben; 
    wire [7:0] led;
     wire pulse;
    //initializare dut
    counter #(
        .count_to(count_to)
    ) DUT (
        .clk(clk),
        .rst(rst),
        .pulse(pulse),
		.buton(buton),
        .count_semafor(count_semafor),
        .rosu(rosu),
        .verde(verde),
        .galben(galben),
        .led(led)
    );

//generare semnale
initial begin
    clk = 0;  
    forever #(20) clk = ~clk; 
end

    //testare simulare
    initial begin
       //initializare
        rst = 0;
        buton = 1;
     //cicluri
        #10 rst = 1;
        #2000 buton = 0;        
        #100000 buton = 1;  

        #(count_to*10);

    end

    
    initial begin
        $monitor(
            "Time: %0t | Number: %0d | Red: %b | Yellow: %b | Green: %b | LEDs: %b",
            $time, count_semafor, rosu, galben, verde, led
        );
    end

endmodule
