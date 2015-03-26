#!/bin/bash

source ~/.topology
source hosts 

PROTO="udp4"
if [ $# -eq 1 ]
then
  PROTO="$1"
fi

CWD=`pwd`

echo "configuring Servers"
./configServers.sh ${PROTO}
echo "configuring Clients"
./configClients.sh ${PROTO}
echo "configuring Routers"
./configRouters.sh ${PROTO}
