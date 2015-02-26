#!/bin/bash
source ~/.topology
CWD=`pwd`
 ssh $  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_000 >& server_000.log &"  
