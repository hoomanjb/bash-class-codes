#!/bin/bash
i=0

while true
do
    echo -n "new number: "
    read number
    no_array[$i]=$number 
    symbol=`echo ${no_array[$i]} | cut -c 1`   
#    echo "symbol= "$symbol
    if [[ $symbol == '+' ]]
    then 
        no_array[$i]=`echo ${no_array[$i]} | awk -F '+' '{print $2}'`
    fi

    for (( c=1; c < ${#no_array[*]} ; c++ ))
    do
    
      for (( d=0; d < ${#no_array[*]} - 1 ; d++ ))
    	do
#           echo "if"${no_array[$c]}" > "${no_array[$d]} 
       		if [[ ${no_array[$c]} -lt ${no_array[$d]} ]]
       		then 
            		temp=${no_array[$c]}
            		no_array[$c]=${no_array[$d]}
            		no_array[$d]=$temp      
       		fi
    	done 
    done

    echo "printing the array"
    for (( count=0; count < ${#no_array[*]}; count++ ))
    do
         echo "array["$count"]= "${no_array[$count]}
    done

   ((i=i+1))
done



