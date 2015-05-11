#!/bin/bash
# Client Faces
nfdc create udp4://h1x1:6363 # FaceID: 4
nfdc create udp4://h2x1:6363 # FaceID: 6
nfdc create udp4://h3x1:6363 # FaceID: 8
nfdc create udp4://h4x1:6363 # FaceID: 10
nfdc create udp4://h5x1:6363 # FaceID: 12
nfdc create udp4://h6x1:6363 # FaceID: 14
 
# Server Faces
nfdc create udp4://h1x1:6363 # FaceID: 16
nfdc create udp4://h2x1:6363 # FaceID: 18
nfdc create udp4://h3x1:6363 # FaceID: 20
nfdc create udp4://h4x1:6363 # FaceID: 22
nfdc create udp4://h5x1:6363 # FaceID: 24
nfdc create udp4://h6x1:6363 # FaceID: 26
 
# Next Hops
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/000 udp4://h1x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/001 udp4://h2x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/002 udp4://h3x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/003 udp4://h4x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/004 udp4://h5x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/005 udp4://h6x1:6363 
 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/006 udp4://h1x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/007 udp4://h2x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/008 udp4://h3x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/009 udp4://h4x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/010 udp4://h5x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/011 udp4://h6x1:6363 
 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/012 udp4://h1x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/013 udp4://h2x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/014 udp4://h3x1:6363 
nfdc add-nexthop -c 1 /abcde/fghij/klmno/pqrst/015 udp4://h4x1:6363 
