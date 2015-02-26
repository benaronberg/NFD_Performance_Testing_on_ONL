#!/bin/bash

CWD=`pwd`

source ~/.topology
source hosts
# Start Servers
echo "start nfd on all servers"
for s in $SERVER_HOSTS 
do
  ssh ${!s} "cd $CWD ; ./start_nfd.sh" 
done

echo "start nfd on all clients"
for s in $CLIENT_HOSTS 
do
  ssh ${!s} "cd $CWD ; ./start_nfd.sh" 
done

# Start Rtr
echo "start nfd on routers"
for s in $RTR_HOSTS 
do
  ssh ${!s} "cd $CWD ; ./start_nfd.sh" 
done