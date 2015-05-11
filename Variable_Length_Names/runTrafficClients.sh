#!/bin/bash
source ~/.topology
CWD=`pwd`
INTERVAL=10
if [ $# -eq 1 ]
then
  INTERVAL=$1
fi
 ssh $h1x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_000 >& client_000.log &"  
 ssh $h2x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_001 >& client_001.log &"  
 ssh $h3x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_002 >& client_002.log &"  
 ssh $h4x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_003 >& client_003.log &"  
 ssh $h5x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_004 >& client_004.log &"  
 ssh $h6x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_005 >& client_005.log &"  
 ssh $h1x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_006 >& client_006.log &"  
 ssh $h2x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_007 >& client_007.log &"  
 ssh $h3x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_008 >& client_008.log &"  
 ssh $h4x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_009 >& client_009.log &"  
 ssh $h5x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_010 >& client_010.log &"  
 ssh $h6x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_011 >& client_011.log &"  
 ssh $h1x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_012 >& client_012.log &"  
 ssh $h2x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_013 >& client_013.log &"  
 ssh $h3x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_014 >& client_014.log &"  
 ssh $h4x1 "cd $CWD/client ; ndn-traffic -i $INTERVAL NDN_Traffic_Client_015 >& client_015.log &"  
