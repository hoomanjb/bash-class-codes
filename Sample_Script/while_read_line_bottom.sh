function while_read_LINE_bottom

{
INFILE=/etc/passwd


while read LINE
do
echo "$LINE" 
done < $INFILE
}

while_read_LINE_bottom