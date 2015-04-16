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

# Start clients
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

echo "Sleep so nlsr will be able to start"
sleep 10

# hacky temporary solution for hosts-> conf pairing
#ROUTER_PAIRING=( "h1x1:csu"
#          "h2x1:uiuc"
#          "h3x1:michigan"
#          "h5x2:memphis"
#          "h6x1:wu"
#          "h7x2:arizona" )
#SERVER_PAIRING=( "h4x1:server0" )
#CLIENT_PAIRING=( "h8x2:client0" )

NLSR_PAIRING=( "h1x1:csu"
          "h2x1:uiuc"
          "h3x1:michigan"
          "h5x2:memphis"
          "h6x1:wu"
          "h7x2:arizona" 
	  "h4x1:server0" 
	  "h8x2:client0" )

# Start Rtr
echo "start nlsr on routers"
for s in "${NLSR_PAIRING[@]}"
do
  HOST=${s%%:*}
  NAME=${s#*:}
  ssh ${!HOST} "cd $CWD ; nohup nlsr -f ./NLSR_CONF/nlsr_$NAME.conf > ./NLSR_OUTPUT/$NAME.OUTPUT 2>&1 &"
done


# Start Servers
#echo "start nlsr on all servers"
#for s in "${SERVER_PAIRING[@]}"
#do
#  HOST=${s%%:*}
#  NAME=${s#*:}
#  ssh ${!s} "cd $CWD ; ./start_nfd.sh"
#done

# Start clients
#echo "start nlsr on all clients"
#for s in $CLIENT_HOSTS
#do
#  ssh ${!s} "cd $CWD ; ./start_nfd.sh"
#done

# Start Rtr
#echo "start nlsr on routers"
#for s in "${ROUTER_PAIRING[@]}"
#do
#  HOST=${s%%:*}
#  NAME=${s#*:}
#  ssh ${!HOST} "cd $CWD ; nohup nlsr -f ./NLSR_CONF/nlsr_$NAME.conf > ./NLSR_OUTPUT/$NAME.OUTPUT 2>&1 &"
#done

