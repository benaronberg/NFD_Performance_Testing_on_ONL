#!/bin/bash
source ~/.topology
CWD=`pwd`

# Topology:
#             h3x1
# Client     /   \                     Server
#  h8x2 - h1x1 - h2x1 - h6x1 - h5x2 - h4x1
#                          \   /
#                           h7x2

# PROTO="udp4"
# if [ $# -eq 1 ]
# then
#   PROTO="$1"
# fi


# 1x1
ssh $h1x1 <<'ENDSSH'
	  source ~/.topology
	  cd $CWD/
	  nfdc create udp4://h3x1:6363
          nfdc create udp4://h2x1:6363
          nfdc create udp4://h7x2:6363 
          nfdc create udp4://h8x2:6363           
          nfdc add-nexthop -c 1 / udp4://h3x1:6363
          nfdc add-nexthop -c 1 / udp4://h2x1:6363
          nfdc add-nexthop -c 1 / udp4://h7x2:6363
ENDSSH
echo "this worked"
# 2x1
ssh $h2x1 "cd $CWD/ ;
          nfdc create udp4://h8x2:6363 ;
          nfdc create udp4://h3x1:6363 ;
          nfdc create udp4://h2x1:6363 ;  
          nfdc add-nexthop -c 1 / udp4://h6x1:6363"

# 3x1
ssh $h3x1 "cd $CWD/ ;
          nfdc create udp4://h1x1:6363 ;
          nfdc create udp4://h2x1:6363 ;
          nfdc create udp4://h5x2:6363 ;  
          nfdc add-nexthop -c 1 / udp4://h5x2:6363"

# 4x1 (server)
ssh $h4x1 "cd $CWD/ ;
           nfdc create udp4://h5x2:6363 ;
           nfdc add-nexthop -c 1 / udp4://h5x2:6363"

# 5x2
ssh $h5x2 "cd $CWD/ ;
           nfdc create udp4://h3x1:6363 ;
           nfdc create udp4://h4x1:6363 ;
           nfdc create udp4://h6x1:6363 ;
           nfdc create udp4://h7x2:6363 ;  
           nfdc add-nexthop -c 1 / udp4://h4x1:6363"

# 6x1
ssh $h6x1 "cd $CWD/ ;
           nfdc create udp4://h2x1:6363 ;
           nfdc create udp4://h5x2:6363 ;
           nfdc create udp4://h7x2:6363 ; 
           nfdc add-nexthop -c 1 / udp4://h5x2:6363"

# 7x2
ssh $h7x2 "cd $CWD/ ;
           nfdc create udp4://h1x1:6363 ;
           nfdc create udp4://h6x1:6363 ;
           nfdc create udp4://h5x2:6363 ; 
           nfdc add-nexthop -c 1 / udp4://h5x2:6363"

# 8x2 (client)
ssh $h8x2 "cd $CWD/ ; 
           nfdc create udp4://h1x1:6363 ;
           nfdc add-nexthop -c 1 / udp4://h1x1:6363"
