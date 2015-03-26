#!/bin/bash
source ~/.topology
CWD=`pwd`
ssh $h4x1 "cd $CWD/server ; ./config_server.sh udp4" 
