#cat while read LINE
INFILE=/etc/passwd

function cat_while_read_LINE
{
# Method 1
# Zero out the $OUTFILE

cat $INFILE | while read LINE
do
echo "$LINE" 
done
}

cat_while_read_LINE
