#!/bin/bash 
total=`df  -mP | grep "^/dev/" | awk '{ sum += $4 } END { print sum }'`
echo "The total diskspace is $total Megabyte"
