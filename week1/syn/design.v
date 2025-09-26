module mux_ff (
    input  wire clk,       // clock for FF
    input  wire rst_n,     // active-low reset
    input  wire sel,       // select line for mux
    input  wire d0,        // mux input 0
    input  wire d1,        // mux input 1
    output reg  q          // flip-flop output
);

    // wire between mux and FF
    wire mux_out;

    // 2:1 MUX
    assign mux_out = (sel) ? d1 : d0;

    // D Flip-Flop with synchronous reset
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0;
        else
            q <= mux_out;
    end

endmodule
