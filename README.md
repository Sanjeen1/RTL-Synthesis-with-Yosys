# RTL-Synthesis-with-Yosys
RTL-to-gate-level synthesis and STA using open source Yosys tool a on a 32 bit ALU and c17 benchmark circuits with opensource Sky130/Nangate45 standard cells.

Synthesis is the process of converting a Register Transfer Level (RTL) hardware description (typically written in Verilog or VHDL) into a gate-level netlist consisting of logic gates and flip-flops from a specific technology library.

**Why is Synthesis Needed?**
To translate human-readable HDL code into a hardware-realizable gate-level design
To enable technology mapping based on standard cell libraries
To perform optimizations for area, power, and timing
To prepare the design for further steps like floorplanning, placement, routing, and fabrication

<img width="966" height="375" alt="image" src="https://github.com/user-attachments/assets/83a49cd6-4e48-4895-b35f-069644b8cb97" />
**Inputs to Synthesis:**
---> RTL Code (Verilog/VHDL):
    This is the behavioral description of the circuit, specifying how it should function at a high level. 
--->Timing Library (LIB):
    This library contains information about the characteristics of the standard cells available in the target technology library, including timing, power, and area information. 
--->Design Constraints (SDC):
   These constraints, often in the Synopsys Design Constraints (SDC) format, specify performance requirements such as clock frequencies, timing paths, and power consumption limits. 
---> Unified Power Format (UPF):
    This format specifies the power intent of the design, including voltage domains and power management techniques. 

**Outputs from Synthesis:**
--->Gate-Level Netlist:
This is the synthesized circuit represented as a collection of logic gates and their interconnections. It describes the circuit's functionality in terms of standard cells. 
--->Timing Data (SDF):
This data provides timing information for the synthesized netlist, which is crucial for further stages like placement and routing. 
--->Other Outputs:
Depending on the synthesis tool and design requirements, other outputs might include reports on area, power consumption, and timing analysis. 

Synthesis Process:
1. Elaboration:
The synthesis tool parses the RTL code and creates a data structure representing the design.
2. Logic Optimization:
The tool optimizes the design based on the specified constraints, aiming to meet performance goals while minimizing area and power consumption.
3. Technology Mapping:
The optimized logic is mapped to the available standard cells in the target technology library.
4. Netlist Generation:
Finally, the tool generates the gate-level netlist that represents the synthesized circuit. 

synthesis (Yosys)
→ Generates a gate-level netlist (mapped to standard cells).
❌ Yosys does not generate SDF.yosys does not read sdc file.

Synthesis is done with open source tool yosys with open source Sky130/Nangate45 standard cells for 32 bit ALU and c17 benchmark circuit.
