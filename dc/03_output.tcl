current_design [get_designs MBF]

remove_unconnected_ports -blast_buses [get_cells -hierarchical *]

set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule


#write_sdf NFC.sdf
write -format ddc -hierarchy -output MBF.ddc
write_file -format verilog -hierarchy -output MBF_syn.v
write_sdf -version 1.8 -context verilog  -load_delay net  MBF_syn.sdf
write_sdc -version 1.8 MBF.sdc
report_area   > area.log
report_timing > timing.log
report_power  > power.log
report_qor    > MBF.qor
