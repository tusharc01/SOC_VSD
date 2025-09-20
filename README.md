# SOC_VSD
RISC-V Reference Tapeout Program


### What is the VSD RISC-V Reference SoC Tapeout Program?

In essence, it's a hands-on, project-based training program that takes students and professionals with a background in digital design through the **complete process of designing a real System-on-Chip (SoC) and preparing it for a physical tapeout** (the final step of sending the design to a foundry for fabrication).

### Key Components of the Program

1.  **The Core: RISC-V CPU:** The heart of the SoC is a RISC-V core. Participants don't necessarily design the core from scratch but learn to integrate an open-source core (like the PicoRV32 or similar) into a larger system.

2.  **The Full SoC Design:** The program goes beyond just the CPU. Participants build a complete SoC by integrating:
    *   **Processor Core:** The RISC-V CPU.
    *   **Memory:** Integration of SRAM and memory controllers.
    *   **Peripherals:** Adding standard peripherals like GPIO (General Purpose Input/Output), UART (for serial communication), Timers, etc.
    *   **Bus Interconnect:** Using an AXI or AHB bus (common industry-standard protocols) to connect all these components together.

3.  **The Complete VLSI Flow:** This is the most crucial educational aspect. The program covers the entire VLSI design flow using open-source tools, primarily the **OpenLANE** automated toolchain and **SkyWater 130nm PDK** (Process Design Kit).
    *   **RTL Design & Verification:** Writing and testing the HDL code (Verilog/VHDL).
    *   **Logic Synthesis:** Converting the RTL into a gate-level netlist.
    *   **Floorplanning & Placement:** Deciding where different blocks go on the silicon die.
    *   **Clock Tree Synthesis (CTS):** Distributing the clock signal efficiently.
    *   **Routing:** Connecting all the placed components with metal wires.
    *   **Static Timing Analysis (STA):** Ensuring the design meets timing constraints.
    *   **Physical Verification (DRC, LVS):** Checking for design rule violations and ensuring the layout matches the schematic.

4.  **The Goal: Tapeout:** The culmination of the program is preparing the final GDSII file (the blueprint for the chip) for a **multi-project wafer (MPW) shuttle** run, like those organized by **Google** and **SkyWater Technology**. This means the designs of all successful participants are combined onto a single mask and fabricated together on a real silicon wafer.
