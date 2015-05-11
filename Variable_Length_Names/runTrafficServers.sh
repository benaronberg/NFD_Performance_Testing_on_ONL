#!/bin/bash
source ~/.topology
CWD=`pwd`
 ssh $h1x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_000 >& server_000.log &"  
 ssh $h2x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_001 >& server_001.log &"  
 ssh $h3x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_002 >& server_002.log &"  
 ssh $h4x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_003 >& server_003.log &"  
 ssh $h5x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_004 >& server_004.log &"  
 ssh $h6x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_005 >& server_005.log &"  
 ssh $h1x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_006 >& server_006.log &"  
 ssh $h2x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_007 >& server_007.log &"  
 ssh $h3x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_008 >& server_008.log &"  
 ssh $h4x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_009 >& server_009.log &"  
 ssh $h5x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_010 >& server_010.log &"  
 ssh $h6x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_011 >& server_011.log &"  
 ssh $h1x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_012 >& server_012.log &"  
 ssh $h2x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_013 >& server_013.log &"  
 ssh $h3x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_014 >& server_014.log &"  
 ssh $h4x1  "cd $CWD/server ; ndn-traffic-server NDN_Traffic_Server_015 >& server_015.log &"  
