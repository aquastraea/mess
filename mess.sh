#!/bin/sh

# Here $NF standfor the last value in one line. 
# S[$1] should be a dict that key=$1,vaule=sum(S[$1]) 
cat ./stat.log | awk '{if($NF>50) {S[$1]+=$4;R[$1]=$NF}}END{for(i in S) print i,S[i],R[i]}' | sort
