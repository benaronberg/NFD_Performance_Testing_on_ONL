#!/bin/bash

source ~/.topology
source hosts
source helperFunctions

CWD=`pwd`

# --- GET BACK TO THIS ---
# echo "Kill Traffic"
# ./killTraffic.sh

killed_nfd=()
for s in "${ROUTER_HOST_PAIRS[@]}" 
do
  pair_info=(${s//:/ })
  ROUTER=${pair_info[0]}
  HOST=${pair_info[1]}
  
  echo "$ROUTER, $HOST"

  # array_contains defined in helperFunctions
  if ! array_contains $killed_nfd $ROUTER
  then
    # start nfd on ROUTER
    ssh ${!ROUTER} "killall nfd ;
                 killall nlsr"
    killed_nfd+=("$ROUTER")
  fi
  # start nfd on HOST
  ssh ${!HOST} "cd $CWD ; ./start_nfd.sh" 
done

echo "sleep 10 to give nfd from clients and servers to dump gmon.out if they are. Then rtr can be the last"

sleep 10

