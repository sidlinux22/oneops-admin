#!/bin/bash

STATE1=$1
STATE2=$2
STATE3=$3
OUTPUT=$(netstat -an | awk '{print $6}' | egrep "$1|$2|$3")
count_time_out=$(echo $OUTPUT|egrep $1| wc -w)
count_close_wait=$(echo $OUTPUT|egrep $2| wc -w)
count_established=$(echo $OUTPUT|egrep $3| wc -w)
echo "count_time_out=$count_time_out|count_time_out=$count_time_out "
echo "count_close_wait=$count_close_wait|count_close_wait=$count_close_wait "
echo "count_established=$count_established|count_established=$count_established "
