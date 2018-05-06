set high_fanout_net_threshold 0

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

set_structure -timing true

# compile
# optimize_registers
# set_max_area 0

compile -map_effort high
compile -map_effort high -inc
