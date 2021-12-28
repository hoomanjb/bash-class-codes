#!/bin/bash

last=0

while true 
do
path=$1
Numfile=`ls $path | wc -l`
Date=`date '+%y-%m-%d %H:%M:%S' `
if (($last==0)) 
then
echo $Date $Numfile >> $path/OutPut.txt
echo "cheking files in every 5sec, date is $Date & files is $Numfile "

elif (($last==$Numfile)) 
then
echo "Nothing Happend!!!"
elif (($last!=$Numfile))
then
echo $Date $Numfile >> $path/OutPut.txt
echo "cheking files in every 5sec , date is $Date & new files is $Numfile " 
fi
last=`awk 'END {print $3}' $path/OutPut.txt `
sleep 5
done
