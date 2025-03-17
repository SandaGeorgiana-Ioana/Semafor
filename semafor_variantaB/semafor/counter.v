module counter ( //modul principal
    input clk, // s ceas
    input rst, // activ pe negativ
    input buton,
    output reg pulse,
    output reg rosu,
    output reg verde,
    output reg galben,
	output reg [7:0] led,//iesire pe leduri
output reg [23:0] count_semafor
);

    reg [31:0] count_pulse; // num pt puls
   // reg [6:0] count_semafor; //numarator pentru tranzitiile semaf
	reg [7:0] led_in;
	
    parameter count_to=26'd12_000_000;//constanta pe 26 de biti, in zecimal
    parameter pulse_start=count_to*2;

    reg [1:0] semafor_state;
    reg buton_push;//daca butonul a fost apasat

    localparam RED=3;
    localparam YELLOW=2;
    localparam GREEN=5;
	
	wire slow_clk; //semnal de ceas divizat
    clock_divider #(
        .CLK_FREQ(12000000)
    ) clk_div (
        .rst_n(rst),
        .clk_i(clk),
        .divider_i(3'b000),  //fara divizare
        .clk_o(slow_clk)
    );


    always @(posedge slow_clk or negedge rst) begin
        if (~rst) begin //activ pe neg
            semafor_state <= 2'b00;
			pulse <= 0;
            rosu <= 0;
            verde <= 1;
            galben <= 0;
            count_semafor <= 0;
            buton_push <= 0;		
			led_in <= ~8'b100_00_010;
			
        end else begin
		//daca butonul este apasat pe rosu sau galben
			 if (semafor_state == 2'b00 || semafor_state == 2'b01) begin
				buton_push <= 0;
			end
            if (~buton && (semafor_state == 2'b00 || semafor_state == 2'b01)) begin
                buton_push <= 1;
            end
            if (count_semafor >= count_to) begin
                count_semafor <= 0;
            end else begin
                count_semafor <= count_semafor + 1;
            end
			
			
			case(semafor_state)
			
			    2'b00: begin //
				    rosu <= 0;
                    galben <= 0;
                    verde <= 1;
				    led_in <= ~8'b100_00_010; //actualizam ledurile-: rosu pietoni si verde masini
					
                    if (count_semafor >= GREEN && buton_push) begin
                        semafor_state <= 2'b01; //trecem la galben
                        count_semafor <= 0;
                    end
				end
				
                2'b01: begin //galben
                    rosu <= 0;
                    galben <= 1;
                    verde <= 0;
				    led_in <= ~8'b100_00_001;
					
                    if (count_semafor >= YELLOW) begin
                        semafor_state <= 2'b10; //trecem la rosu
                        count_semafor <= 0;
                    end
				end
				
                2'b10: begin //rosu
                    rosu <= 1;
                    galben <= 0;
                    verde <= 0;
				    led_in <= ~8'b010_00_100; // verde pietoni si rosu masini
					
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
	input [2:0] divider_i,
    output reg clk_o//ceas de iesire divizat
);

  reg [31:0] count; //numaram cicluri de ceas

  always @(posedge clk_i)
    if (count >= (CLK_FREQ / (2 << divider_i))) begin
      count <= {32{1'b0}}; //resetare 
      clk_o <= !clk_o;
    end else count<=count+1;
endmodule