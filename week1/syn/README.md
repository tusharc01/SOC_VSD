Tool: Yosys

*Commands:*

$ yosys

> read_liberty -lib /home/tusharc/vsd/sky130RTLDesignAndSynthesisWorkshop/design/syn/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

> read_verilog design.v

> synth -top mux_ff

> read_liberty -lib /home/tusharc/vsd/sky130RTLDesignAndSynthesisWorkshop/design/syn/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

> abc -liberty /home/tusharc/vsd/sky130RTLDesignAndSynthesisWorkshop/design/syn/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

> show

> exit


