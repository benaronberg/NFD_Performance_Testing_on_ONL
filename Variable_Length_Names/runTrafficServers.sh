#!/bin/bash
source ~/.topology
CWD=`pwd`
 ssh $h4x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_000 >& server_000.log &"  
