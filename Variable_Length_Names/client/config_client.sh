#!/bin/bash
source ../hosts

nfdc create udp4://h1x1:6363
nfdc add-nexthop -c 1 / udp4://h1x1:6363
