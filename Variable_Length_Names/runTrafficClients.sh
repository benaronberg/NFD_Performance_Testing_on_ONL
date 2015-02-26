#!/bin/bash
source ~/.topology
CWD=`pwd`
INTERVAL=10
 ssh $h8x2 "cd $CWD/client ; ndn-traffic -i 10 NDN_Traffic_Client_000 >& client_000.log &"  
