elapsed_time ()
{
SEC=$1
(( $SEC < 60 )) && echo "[Elapsed time: $SEC seconds]"
(( $SEC >= 60 && $SEC < 3600 )) && echo "[Elapsed time: $(( $SEC / 60 )) \
min $(( $SEC % 60 )) sec]\c"
(( $SEC > 3600 )) && echo "[Elapsed time: $(( $SEC / 3600 )) hr \
$(( ($SEC % 3600) / 60 )) min $(( ($SEC % 3600) % 60 )) sec]"
}
elapsed_time $1
