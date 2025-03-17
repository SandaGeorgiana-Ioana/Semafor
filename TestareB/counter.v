module counter #(
   parameter count_to = 26'd12_000_000
)(
   input clk,
   input rst,
   input buton,
   output reg [23:0] count_semafor,
   output reg pulse,
   output reg rosu,
   output reg verde,
   output reg galben,
   output reg [7:0] led

);

   
	reg [7:0] led_in;
    reg [1:0] semafor_state;
    reg buton_push;

    localparam RED = 5;
    localparam YELLOW = 5;
    localparam GREEN = 15;
	
		 wire slow_clk;
    clock_divider #(
        .CLK_FREQ(count_to)
    ) clk_div (
        .rst_n(rst),
        .clk_i(clk),
        .divider_i(3'b000),  // Divider factor (0 means no division)
        .clk_o(slow_clk)
    );


    always @(posedge slow_clk or negedge rst) begin
        if (~rst) begin
            semafor_state <= 2'b00;
			pulse <= 0;
            rosu <= 0;
            verde <= 1;
            galben <= 0;
            
            count_semafor <= 0;
            buton_push <= 0;
			
			led_in <= ~8'b100_00_010;
			
        end else begin
			
            if (~buton && (semafor_state == 2'b00 || semafor_state==2'b01)) begin
                buton_push <= 1;
            end
            
            if (count_semafor >= count_to) begin
                count_semafor <= 0;
            end else begin
               count_semafor <=count_semafor + 1;
            end
			
			
			case(semafor_state)
			
			    2'b00: begin //verde
				    rosu <= 0;
                    galben <= 0;
                    verde <= 1;
				    led_in <= ~8'b100_00_010; 
					
                    if (count_semafor >= GREEN && buton_push) begin
                        semafor_state <= 2'b01; // Trecem la galben
                       count_semafor <= 0;
                    end
				end
				
                2'b01: begin //galben
                    rosu <= 0;
                    galben <= 1;
                    verde <= 0;
				    led_in <= ~8'b100_00_001;
					
                    if (count_semafor >= YELLOW) begin
                        semafor_state <= 2'b10; // Trecem la rosu
                       count_semafor <= 0;
                    end
				end
				
                2'b10: begin //rosu
                    rosu <= 1;
                    galben <= 0;
                    verde <= 0;
				    led_in <= ~8'b010_00_100; 
					
                    if (count_semafor >= RED) begin
                        semafor_state <= 2'b00; // Trecem la verde
                       count_semafor <= 0;
                        buton_push <= 0;
                    end
				end
				
                default: begin
				
                    semafor_state <= 2'b00; // Stare implicitã
                end
			endcase
        end
	end
	
	always @(*) begin
       led <= led_in[7:0]; 
    end
	
endmodule

module clock_divider #(
	parameter CLK_FREQ = 12000000
)(
    input rst_n,
    input clk_i,
	input[2 : 0] divider_i,
    output reg clk_o
);

  reg [31:0] count;

  always @(posedge clk_i or negedge rst_n)
     if (~rst_n) begin count <= 0; clk_o=0; end else
	if (count >= (CLK_FREQ / (2 << divider_i))) begin
      count <= {32{1'b0}};
      clk_o <= !clk_o;
    end else count <= count + 1;
		endmodule
		