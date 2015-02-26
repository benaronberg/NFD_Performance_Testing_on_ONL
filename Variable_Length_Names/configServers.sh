#!/bin/bash
source ~/.topology
CWD=`pwd`
ssh $ "cd $CWD/server ; ./config_server.sh udp4" 
