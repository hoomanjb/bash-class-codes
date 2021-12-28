oldSTTY=$( stty --save )
stty -echo
read -p "Password: " PASSWD; echo
stty $oldSTTY
echo $PASSWD
