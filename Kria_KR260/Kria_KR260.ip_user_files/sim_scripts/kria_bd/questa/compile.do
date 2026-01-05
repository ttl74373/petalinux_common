vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_19
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_20
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_16
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_33

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_20 questa_lib/msim/axi_intc_v4_1_20
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 questa_lib/msim/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 questa_lib/msim/axi_register_slice_v2_1_33

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_zynq_ultra_ps_e_0_3/sim/kria_bd_zynq_ultra_ps_e_0_3_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_20 -64 -93  \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/99b7/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_intc_0_4/sim/kria_bd_axi_intc_0_4.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_clk_wiz_0_5/kria_bd_clk_wiz_0_5_clk_wiz.v" \
"../../../bd/kria_bd/ip/kria_bd_clk_wiz_0_5/kria_bd_clk_wiz_0_5.v" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kria_bd/ip/kria_bd_proc_sys_reset_0_6/sim/kria_bd_proc_sys_reset_0_6.vhd" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_0/sim/bd_9880_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_1/sim/bd_9880_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_2/sim/bd_9880_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_3/sim/bd_9880_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_4/sim/bd_9880_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_5/sim/bd_9880_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_6/sim/bd_9880_sarn_0.sv" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_7/sim/bd_9880_srn_0.sv" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_8/sim/bd_9880_sawn_0.sv" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_9/sim/bd_9880_swn_0.sv" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_10/sim/bd_9880_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_11/sim/bd_9880_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/ip/ip_12/sim/bd_9880_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/bd_0/sim/bd_9880.v" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/ec67/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/6f8f/hdl" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/3cbc" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Kria_KR260.gen/sources_1/bd/kria_bd/ipshared/0127/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/kria_bd/ip/kria_bd_axi_smc_7/sim/kria_bd_axi_smc_7.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/kria_bd/ip/kria_bd_proc_sys_reset_1_1/sim/kria_bd_proc_sys_reset_1_1.vhd" \
"../../../bd/kria_bd/sim/kria_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

