#!/bin/bash
source ~/.topology
CWD=`pwd`
 ssh $h1x1 "cd $CWD/client ; ./config_client.sh udp4" 
 ssh $h2x1 "cd $CWD/client ; ./config_client.sh udp4" 
 ssh $h3x1 "cd $CWD/client ; ./config_client.sh udp4" 
 ssh $h4x1 "cd $CWD/client ; ./config_client.sh udp4" 
 ssh $h5x1 "cd $CWD/client ; ./config_client.sh udp4" 
 ssh $h6x1 "cd $CWD/client ; ./config_client.sh udp4" 
