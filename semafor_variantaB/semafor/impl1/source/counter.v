module counter (
    input clk,
    input rst,
    input buton,
    output reg pulse,
    output reg rosu,
    output reg verde,
    output reg galben
);

    reg [31:0] count_pulse; // Contor pentru generarea pulsului
    reg [6:0] count_semafor; // Contor pentru semafor

    parameter count_to = 26'd12_000_000;
    parameter pulse_start = count_to * 2;

    reg [1:0] semafor_state;

    localparam RED = 30;
    localparam YELLOW = 5;
    localparam GREEN = 60;

    // Blocul pentru generarea pulsului
    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            count_pulse <= 0;
            pulse <= 0;
        end else begin
            if (count_pulse == pulse_start) begin
                count_pulse <= 0;
                pulse <= 0;
            end else begin
                count_pulse <= count_pulse + 1;
                if (count_pulse == count_to)
                    pulse <= 1;
            end
        end
    end

    // Blocul pentru controlul semaforului
    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            count_semafor <= 0;
            semafor_state <= 2'b00;
            rosu <= 0;
            verde <= 1;
            galben <= 0;
        end else begin
            case (semafor_state)
                2'b00: begin // verde
                    rosu <= 0;
                    galben <= 0;
                    verde <= 1;
                    if (count_semafor >= GREEN && buton) begin
                        semafor_state <= 2'b01; // trecem la galben
                        count_semafor <= 0;
                    end else begin
                        count_semafor <= count_semafor + 1;
                    end
                end

                2'b01: begin // galben
                    rosu <= 0;
                    galben <= 1;
                    verde <= 0;
                    if (count_semafor >= YELLOW) begin
                        semafor_state <= 2'b10;
                        count_semafor <= 0;
                    end else begin
                        count_semafor <= count_semafor + 1;
                    end
                end

                2'b10: begin // ro?u
                    rosu <= 1;
                    galben <= 0;
                    verde <= 0;
                    if (count_semafor >= RED) begin
                        semafor_state <= 2'b00;
                        count_semafor <= 0;
                    end else begin
                        count_semafor <= count_semafor + 1;
                    end
                end

                default: begin
                    semafor_state <= 2'b00;
                end
            endcase
        end
    end
endmodule
