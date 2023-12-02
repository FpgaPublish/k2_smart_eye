puts "========================================"
puts "sim is start:"
set p_in [pwd]
#-> smart_eye_upl_demo2/uart.sim/sim_1/behav/modelsim


## --------------------------------------------------------------------
## get time
set v_now [clock seconds]
set v_time_ver [clock format $v_now -format "%y-%m-%d %H:%M:%S"]

cd ../../../
puts [pwd]
#>>smart_eye_upl_demo2/uart.sim
set pns_sim_md [glob *.md]
puts $pns_sim_md

## --------------------------------------------------------------------
## file operate
catch {exec killall code}

set fid [open $pns_sim_md "a+"]
puts $fid "  "
puts $fid "## $v_time_ver"
puts $fid "* "
close $fid 

catch {exec code -g $pns_sim_md:10000}
## --------------------------------------------------------------------
## pwd back
cd $p_in


