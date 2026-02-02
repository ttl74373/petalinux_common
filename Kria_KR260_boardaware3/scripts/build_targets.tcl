set SCRIPTNAME "build_targets"

proc dbg {scriptname msg enable} {
  if $enable {
    puts [format "%30s : $msg" "$scriptname"]
  }
}

if { [catch {set DIR_PETALINUX_COMMON $::env(DIR_PETALINUX_COMMON)}] } {
    puts stderr "*** ERROR please set environment var DIR_PETALINUX_COMMON to path of checked out location on your machine"
    exit 1
}
# if { [catch {set DIR_BITFILEPATH $::env(DIR_BITFILEPATH)}] } {
#     puts stderr "*** ERROR please set environment var DIR_BITFILEPATH to path of bitfile output"
#     exit 1
# }
# source $DIR_FPGABLOX/common_lib/scripts/common.tcl

# set promptcommit  1
# set genpinfiles   1
# set gensymbols    1
# set runsynpar     1
# set copyoutput    1

# # Get args
# set TARGETNAME [lindex $argv 0]
# set IMAGENAME pwrdosectrlr
# set SYNPATH  $DIR_PETALINUX_COMMON/images/${IMAGENAME}/${TARGETNAME}/syn/syn.runs/synth_1
# set IMPLPATH $DIR_PETALINUX_COMMON/images/${IMAGENAME}/${TARGETNAME}/syn/syn.runs/impl_1
# set SYMBOLSPATH $DIR_PETALINUX_COMMON/images/${IMAGENAME}/cmdbus_symbols
# set CURRENTDIR [pwd]
# set OUTDIR_TMP ./outdir_tmp

# # Verify args
# set targetlist {
#   pcb_reva \
#   pcb_revb \
# }
# if {[checkinlist $TARGETNAME $targetlist] == 1} {
#   dbg $SCRIPTNAME "*** ERROR please specify one of the following targets $targetlist" true
#   exit
# }

# # Prompt for commit message
# if {$promptcommit} {
#   set commitmsg [commitgetmsg]
# }

# # Generate pin files
# if {$genpinfiles} {
#   dbg $SCRIPTNAME "Generating pin files..." true
#   set curr_dir [pwd]
#   cd $DIR_PETALINUX_COMMON/images/${IMAGENAME}/${TARGETNAME}/doc/sch
#   exec python3 csv2hdl.py
#   cd $curr_dir
# }

# # Generate symbols
# if {$gensymbols} {
#   dbg $SCRIPTNAME "Generating symbol files..." true
#   cd $SYMBOLSPATH
#   exec vsim -c -do $DIR_PETALINUX_COMMON/images/pwrdosectrlr/scripts/gensymfiles.do
#   cd $CURRENTDIR
#   if {[checkfile4str "sim_error" "** Error:" "$SYMBOLSPATH/transcript"] != 0} {
#     exit
#   }
# }

# # Commit sources
# if {$promptcommit} {
#   commitdo $commitmsg
# }

# # Get build info for this commit
# set buildtime   [gettime]
# set builddate   [getdate]
# set buildhash   [gethash]
# set branchname  [getbranchname]

# # Run build
# if {$runsynpar} {
  dbg $SCRIPTNAME "Running Synthesis and PAR..." true
  exec vivado -mode batch -source $DIR_PETALINUX_COMMON/Kria_KR260_boardaware3/scripts/syn_par.tcl
  # if {[checkfile4str "syn_error" "ERROR:" "$SYNPATH/runme.log"] != 0} {
  #   exit
  # }
  # if {[checkfile4str "par_error" "ERROR:" "$IMPLPATH/runme.log"] != 0} {
  #   exit
  # }
  # if {[checkfile4str "syn_error" "CRITICAL WARNING:" "$SYNPATH/runme.log"] != 0} {
  #   exit
  # }
  # if {[checkfile4str "par_error" "CRITICAL WARNING:" "$IMPLPATH/runme.log"] != 0} {
  #   exit
  # }
# }


# dbg $SCRIPTNAME "Done!" true
