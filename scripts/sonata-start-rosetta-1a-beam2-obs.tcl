# 1 beam
# sonata-start-rosetta-1a-beam2.obs.tcl

# send out "taking the array" email
sh echo " SonATA taking array" | mailx -s 'SonATA taking array for Rosetta Test' -r jane@seti.org ata-staff@seti.org

# connect to telescope array
#tscope setup

# allow some setup time
sh sleep 2
act set delay 15

sched set beam1 off
sched set beam2 on
sched set beam3 off
sched set tasks prepants,bfreset,bfautoatten,bfinit,caldelay,obs

# 24 dxs 800 KHz
sched set beginfreq 8412.0 
sched set endfreq 8432.1
sched set dxtune range
sched set rftune auto
sched set target user
sched set pipe on
sched set followup off

db set host sse100
db set name sonatadb
db set usedb on

tscope set antlistsource param
tscope set antsprimary  1a
tscope set antsxpol 1a
tscope set antsypol 1a
# both tunings must be the same
 tscope assign beamxc1 1a
 tscope assign beamyc1 1a
 tscope assign beamxd1 1a
 tscope assign beamyd1 1a
 tscope assign beamxd2 1a
 tscope assign beamyd2 1a

act set targetbeam2 160
act set targetprimary 160
act set type target
act set candarch confirmed


dx set length 93
dx set datareqsubchan 178
dx set baseinitaccum 20
dx set basewarn off
dx set baseerror off

# start it all up

#start tasks
