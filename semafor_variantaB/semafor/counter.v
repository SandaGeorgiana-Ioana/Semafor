module counter (
    input clk,
    input rst,              // avtiv in 0
    input buton,

    output reg rosu,
    output reg verde,
    output reg galben,
    output reg [7:0] led,           // ieșire LED-uri
    output reg [23:0] count_semafor 
);

    reg [7:0] led_in;
    reg [1:0] semafor_state;        // 00 = verde, 01 = galben, 10 = roșu
    reg buton_push;                // retine daca a fost apasat butonul

    parameter count_to    = 26'd12_000_000;
    parameter pulse_start = count_to * 2;

    localparam RED    = 3;
    localparam YELLOW = 2;
    localparam GREEN  = 5;

    wire slow_clk;

    // Instanțiere modul divizor de ceas
    clock_divider #(
        .CLK_FREQ(12000000)
    ) clk_div (
        .rst_n(rst),
        .clk_i(clk),
        .divider_i(3'b000), // fără divizare
        .clk_o(slow_clk)
    );

    // Logica semaforului
    always @(posedge slow_clk or negedge rst) begin
        if (~rst) begin
            semafor_state  <= 2'b00;
            rosu           <= 0;
            verde          <= 1;
            galben         <= 0;
            count_semafor  <= 0;
            buton_push     <= 0;
            led_in         <= ~8'b100_00_010;
        end else begin
            // resetam butonuș
            if (semafor_state == 2'b00 || semafor_state == 2'b01)
                buton_push <= 0;

            if (~buton && (semafor_state == 2'b00 || semafor_state == 2'b01))
                buton_push <= 1;

            //incrementam
            if (count_semafor >= count_to)
                count_semafor <= 0;
            else
                count_semafor <= count_semafor + 1;

            // stari
            case (semafor_state)
                2'b00: begin //verde
                    rosu    <= 0;
                    galben  <= 0;
                    verde   <= 1;
                    led_in  <= ~8'b100_00_010;

                    if (count_semafor >= GREEN && buton_push) begin
                        semafor_state <= 2'b01;
                        count_semafor <= 0;
                    end
                end

                2'b01: begin //galben
                    rosu    <= 0;
                    galben  <= 1;
                    verde   <= 0;
                    led_in  <= ~8'b100_00_001;

                    if (count_semafor >= YELLOW) begin
                        semafor_state <= 2'b10;
                        count_semafor <= 0;
                    end
                end

                2'b10: begin //rosu
                    rosu    <= 1;
                    galben  <= 0;
                    verde   <= 0;
                    led_in  <= ~8'b010_00_100;

                    if (count_semafor >= RED) begin
                        semafor_state <= 2'b00;
                        count_semafor <= 0;
                        buton_push <= 0;
                    end
                end

                default: semafor_state <= 2'b00;
            endcase
        end
    end

    // Actualizare ieșiri LED
    always @(*) begin
        led <= led_in;
    end

endmodule

module clock_divider #(
    parameter CLK_FREQ = 12000000
)(
    input rst_n,
    input clk_i,
    input [2:0] divider_i,
    output reg clk_o
);

    reg [31:0] count;

    always @(posedge clk_i) begin
        if (!rst_n) begin
            count  <= 0;
            clk_o  <= 0;
        end else if (count >= (CLK_FREQ / (2 << divider_i))) begin
            count <= 0;
            clk_o <= ~clk_o;
        end else begin
            count <= count + 1;
        end
    end

endmodule

