#!/bin/bash
source ~/.topology
CWD=`pwd`
 ssh $h8x2 "cd $CWD/client ; ./config_client.sh udp4"
