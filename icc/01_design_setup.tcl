set_svf CHIP.svf

set ICC_dir "/usr/cad/lib/CBDK_IC_Contest_v2.1/Astro"
create_mw_lib  -technology "${ICC_dir}/tsmc13_CIC.tf" -mw_reference_library "${ICC_dir}/tsmc13gfsg_fram ../src/rom_1024x4_t13/rom_1024x4_t13/" -bus_naming_style {[%d]}  -open  CHIP
import_designs -format verilog -top MBF -cel CHIP {./MBF_syn.v}
set_tlu_plus_files -max_tluplus "${ICC_dir}/tluplus/t013s8mg_fsg_typical.tluplus" -tech2itf_map  "${ICC_dir}/tluplus/t013s8mg_fsg.map"

read_sdc  -version Latest "./MBF_APR.sdc"
save_mw_cel  -design "CHIP"
save_mw_cel  -design "CHIP" -as "design_setup"
