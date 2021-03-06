function ping_host
{
HOST=$1 # Grab the host to ping from ARG1.
PING_COUNT=3
PACKET_SIZE=54
# This next case statement executes the correct ping
# command based on the Unix flavor
case $(uname) in
AIX|OpenBSD|Linux)
ping -c${PING_COUNT} $HOST 2>/dev/null
;;
HP-UX)
ping $HOST $PACKET_SIZE $PING_COUNT 2>/dev/null
;;
SunOS)
ping -s $HOST $PACKET_SIZE $PING_COUNT 2>/dev/null
;;
*)
echo "\nERROR: Unsupported Operating System - $(uname)"
echo "\n\t. . .EXITING. . .\n"
exit 1
esac
}
ping_host $1
