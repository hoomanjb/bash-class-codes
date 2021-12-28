#!/bin/bash
OS_Name=`uname -s`
if [ $OS_Name == Linux ]
then
echo The kernel is Linux
else 
echo The kernel is not Linux
fi
