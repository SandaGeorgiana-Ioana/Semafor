module clk_gen(
    output reg clk,
    output reg rst
);

initial clk = 0;
always #5 clk = !clk;

initial begin
       rst = 1;
    #1 rst = 0;
    #7 rst = 1;
    
end

endmodule