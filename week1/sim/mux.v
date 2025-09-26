`timescale 1ns/1ps

module mux (
    input  d0, d1, d2, d3,
    input  [1:0] sel,
    output reg  y
);

    always @(*) begin
        case (sel)
            2'b00: y = d0;
            2'b01: y = d1;
            2'b10: y = d2;
            2'b11: y = d3;
            default: y = 1'bx;
        endcase
    end

endmodule

