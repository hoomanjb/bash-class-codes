#!/bin/bash
# PURPOSE: This script is used to list the group(s) associated
# with each user defined in the /etc/passwd file.
###########################################
# DECLARE FILES AND VARIABLES HERE
########
case $(uname) in
SunOS) alias awk=nawk
;;
esac
#########################################
# BEGINNING OF MAIN
#########################################
cat /etc/passwd | awk -F : '{print $1}' | while read ID
do
echo -e "${ID}: \c"
id -gn $ID
done
