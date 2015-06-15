#!/bin/bash
source ~/.topology

# ********************************************************
# *** This file isn't configured for the runAll script ***
# ********************************************************

CWD=`pwd`
 ssh $h8x2  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_000 >& server_000.log &"  

