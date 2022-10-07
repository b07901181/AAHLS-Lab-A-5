############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dataflow
set_top diamond
add_files dataflow/diamond.cpp
add_files dataflow/diamond.h
add_files -tb dataflow/diamond_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dataflow/result.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 5 -name default
source "./dataflow/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -enable_dataflow_profiling -trace_level all
export_design -format ip_catalog
