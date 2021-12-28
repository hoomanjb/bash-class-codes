#!/bin/bash
UPPER_LIMIT=$1
Number=`echo $RANDOM `
RANDOM_NUMBER=$(($Number % $UPPER_LIMIT + 1))
echo "$RANDOM_NUMBER"
