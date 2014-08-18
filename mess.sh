#!/bin/sh

cat ./stat.log | awk '{if($NF>50) {S[$1]+=$4;R[$1]=$NF}}END{for(i in S) print i,S[i],R[i]}' | sort
