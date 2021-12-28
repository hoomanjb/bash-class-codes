#set -A MY_ARRAY alpha beta gamma
#or
X=0 # Initialize counter to zero.
# Load the array with the strings alpha, beta, and gamma
for ELEMENT in alpha gamma beta
do
MY_ARRAY[$X]=$ELEMENT
((X = X + 1))
done
echo ${MY_ARRAY[*]}

