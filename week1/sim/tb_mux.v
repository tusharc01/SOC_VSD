`timescale 1ns/1ps

module tb_mux;
    reg d0, d1, d2, d3;
    reg [1:0] sel;
    wire y;

    // Instantiate DUT
    mux DUT (
        .d0(d0), .d1(d1), .d2(d2), .d3(d3),
        .sel(sel), .y(y)
    );

    // VCD dump for GTKWave
    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0, tb_mux);
    end

    // Stimulus
    initial begin
        // initialize inputs
        d0 = 0; d1 = 1; d2 = 0; d3 = 1;

        sel = 2'b00; #10;   // expect y = d0
        sel = 2'b01; #10;   // expect y = d1
        sel = 2'b10; #10;   // expect y = d2
        sel = 2'b11; #10;   // expect y = d3

        // change inputs and test again
        d0 = 1; d1 = 0; d2 = 1; d3 = 0;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        #20;
        $finish;
    end
    
endmodule
