#!/bin/bash
rm -rf file.nu
for ((i=1 ; i<=100 ; i++))
do
for ((j=1 ; j<20 ; j++))
do
UPPER_LIMIT=9
Number=`echo $RANDOM `
RANDOM_NUMBER=$(($Number % $UPPER_LIMIT + 1))
echo -n "$RANDOM_NUMBER" >> file.nu
done
echo "" >> file.nu
done
