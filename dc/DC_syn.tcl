# initial
remove_design -all

# Read all Files
read_verilog {../src/MBF.v}
current_design MBF
link

# Setting Clock Constraits
source -echo -verbose MBF_DC.sdc

# Synthesis all design
compile
optimize_registers
set_max_area 0
compile -map_effort high -area_effort high
# compile -map_effort high -area_effort high -inc

write -format ddc  -hierarchy -output "MBF_syn.ddc"
write_sdf MBF_syn.sdf
write_file -format verilog -hierarchy -output MBF_syn.v
report_area   > area.log
report_timing > timing.log
report_qor    > huffman_syn.qor
