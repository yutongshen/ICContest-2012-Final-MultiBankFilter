###################################################################

# Created by write_sdc on Tue May  1 16:44:33 2018

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions slow -library slow
set_wire_load_model -name tsmc13_wl10 -library slow
set_load -pin_load 1 [get_ports y_valid]
set_load -pin_load 1 [get_ports z_valid]
set_load -pin_load 1 [get_ports {y[7]}]
set_load -pin_load 1 [get_ports {y[6]}]
set_load -pin_load 1 [get_ports {y[5]}]
set_load -pin_load 1 [get_ports {y[4]}]
set_load -pin_load 1 [get_ports {y[3]}]
set_load -pin_load 1 [get_ports {y[2]}]
set_load -pin_load 1 [get_ports {y[1]}]
set_load -pin_load 1 [get_ports {y[0]}]
set_load -pin_load 1 [get_ports {z[7]}]
set_load -pin_load 1 [get_ports {z[6]}]
set_load -pin_load 1 [get_ports {z[5]}]
set_load -pin_load 1 [get_ports {z[4]}]
set_load -pin_load 1 [get_ports {z[3]}]
set_load -pin_load 1 [get_ports {z[2]}]
set_load -pin_load 1 [get_ports {z[1]}]
set_load -pin_load 1 [get_ports {z[0]}]
create_clock [get_ports clk]  -period 5  -waveform {0 2.5}
set_clock_latency 0.5  [get_clocks clk]
set_clock_uncertainty 0.1  [get_clocks clk]
set_input_delay -clock clk  1  [get_ports reset]
set_output_delay -clock clk  1  [get_ports y_valid]
set_output_delay -clock clk  1  [get_ports z_valid]
set_output_delay -clock clk  1  [get_ports {y[7]}]
set_output_delay -clock clk  1  [get_ports {y[6]}]
set_output_delay -clock clk  1  [get_ports {y[5]}]
set_output_delay -clock clk  1  [get_ports {y[4]}]
set_output_delay -clock clk  1  [get_ports {y[3]}]
set_output_delay -clock clk  1  [get_ports {y[2]}]
set_output_delay -clock clk  1  [get_ports {y[1]}]
set_output_delay -clock clk  1  [get_ports {y[0]}]
set_output_delay -clock clk  1  [get_ports {z[7]}]
set_output_delay -clock clk  1  [get_ports {z[6]}]
set_output_delay -clock clk  1  [get_ports {z[5]}]
set_output_delay -clock clk  1  [get_ports {z[4]}]
set_output_delay -clock clk  1  [get_ports {z[3]}]
set_output_delay -clock clk  1  [get_ports {z[2]}]
set_output_delay -clock clk  1  [get_ports {z[1]}]
set_output_delay -clock clk  1  [get_ports {z[0]}]
set_drive 1  [get_ports clk]
set_drive 1  [get_ports reset]
