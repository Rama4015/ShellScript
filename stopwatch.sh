#! /bin/bash
echo -e "Please enter any key to start the watch:\c"
read startkey
start=$( date -u +%s  )
echo "$start"
echo -e "Please enter any key to stop the watch:\c"
read stopkey
stop=$( date -u +%s )
echo "$stop"
elapsed=$(( $stop - $start ))
echo -e "The elapsed time is:\c"
echo "$elapsed"
