# TCL File Generated by Component Editor 20.1
# Mon Apr 11 09:29:37 CEST 2022
# DO NOT MODIFY


# 
# avalon_sdr_vhdl "avalon_sdr_vhdl" v1.0
#  2022.04.11.09:29:37
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module avalon_sdr_vhdl
# 
set_module_property DESCRIPTION ""
set_module_property NAME avalon_sdr_vhdl
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME avalon_sdr_vhdl
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avalon_sdr_vhdl
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_sdr_vhdl.vhd VHDL PATH avalon_sdr_vhdl.vhd TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point m0
# 
add_interface m0 avalon start
set_interface_property m0 addressUnits SYMBOLS
set_interface_property m0 associatedClock clock
set_interface_property m0 associatedReset reset
set_interface_property m0 bitsPerSymbol 8
set_interface_property m0 burstOnBurstBoundariesOnly false
set_interface_property m0 burstcountUnits WORDS
set_interface_property m0 doStreamReads false
set_interface_property m0 doStreamWrites false
set_interface_property m0 holdTime 0
set_interface_property m0 linewrapBursts false
set_interface_property m0 maximumPendingReadTransactions 0
set_interface_property m0 maximumPendingWriteTransactions 0
set_interface_property m0 readLatency 0
set_interface_property m0 readWaitTime 1
set_interface_property m0 setupTime 0
set_interface_property m0 timingUnits Cycles
set_interface_property m0 writeWaitTime 0
set_interface_property m0 ENABLED true
set_interface_property m0 EXPORT_OF ""
set_interface_property m0 PORT_NAME_MAP ""
set_interface_property m0 CMSIS_SVD_VARIABLES ""
set_interface_property m0 SVD_ADDRESS_GROUP ""

add_interface_port m0 avm_m0_waitrequest waitrequest Input 1
add_interface_port m0 avm_m0_readdatavalid readdatavalid Input 1
add_interface_port m0 avm_m0_readdata readdata Input 256
add_interface_port m0 avm_m0_address address Output 32
add_interface_port m0 avm_m0_read read Output 1
add_interface_port m0 avm_m0_byteenable byteenable Output 32
add_interface_port m0 avm_m0_burstcount burstcount Output 11
add_interface_port m0 avm_m0_write write Output 1
add_interface_port m0 avm_m0_writedata writedata Output 256


# 
# connection point out_data
# 
add_interface out_data conduit end
set_interface_property out_data associatedClock clock
set_interface_property out_data associatedReset reset
set_interface_property out_data ENABLED true
set_interface_property out_data EXPORT_OF ""
set_interface_property out_data PORT_NAME_MAP ""
set_interface_property out_data CMSIS_SVD_VARIABLES ""
set_interface_property out_data SVD_ADDRESS_GROUP ""

add_interface_port out_data out_data export Output 256


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clock clk Input 1


# 
# connection point do_read
# 
add_interface do_read conduit end
set_interface_property do_read associatedClock clock
set_interface_property do_read associatedReset reset
set_interface_property do_read ENABLED true
set_interface_property do_read EXPORT_OF ""
set_interface_property do_read PORT_NAME_MAP ""
set_interface_property do_read CMSIS_SVD_VARIABLES ""
set_interface_property do_read SVD_ADDRESS_GROUP ""

add_interface_port do_read do_read export Input 1

