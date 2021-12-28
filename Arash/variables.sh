#!/bin/bash

# echo "hello world $1"
# echo 'hello world $1'
# echo "hello world '\$1'"
# echo 'hello world "$1"'
# echo $0
# echo "you are using file $(basename $0)"
# echo "you are using file `basename $0`"

# echo $? #yaani natije command ya bash
# echo $0
# echo $1 # 1 ta 10
# echo $2
# echo $3
# echo 
# echo $#
# echo $*

# name="Mokhtar"
# age=30
# total=50
# myarr=(one two three four)
# export name

# echo $name
# echo $age
# echo $total
# echo ${myarr[*]}
# unset myarr[1]
# echo ${myarr[*]}

# ./test2.sh

# a=`pwd`
# echo $a

num=1
num=$(( $num + 1 ))
echo $num

exit 0

