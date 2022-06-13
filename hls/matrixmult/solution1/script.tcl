############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrixmult
set_top matrixmul
add_files ../sp22-e520-lab-assignment10-moblau/sources/matrixmul.cpp
add_files -tb ../sp22-e520-lab-assignment10-moblau/sources/matrixmul_test.cpp -cflags "-DHW_COSIM"
open_solution "solution1" -flow_target vivado
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
config_export -description {matrix multiplier} -display_name matrixmult -output /home/moblau/ece520/lab10/hardware/ip_repo -version 1.0.0
#source "./matrixmult/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level all
export_design -rtl verilog -format ip_catalog -output /home/moblau/ece520/lab10/hardware/ip_repo
