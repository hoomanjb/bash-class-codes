#!/bin/bash
###################################################################
################## DEFINE VARIABLES HERE ##########################
###################################################################
USER="mehdi"
UPASSWD="qazwsx"
REMOTEDIR="/scripts/download"
LOCALDIR="/home/mehdi"
cat /dev/null > $DIRLISTFILE
###################################################################
##################### BEGINNING OF MAIN ###########################
###################################################################
ftp -i -v -n 127.0.0.1 <<END_FTP
user $USER $UPASSWD
nlist $REMOTEDIR $LOCALDIR/available.list
bye
END_FTP
