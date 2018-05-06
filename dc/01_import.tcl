remove_design -all

set_svf MBF.svf

# Import Design
read_verilog {../src/MBF.v }
current_design [get_designs MBF]
link

source -echo -verbose ./MBF_DC.sdc
