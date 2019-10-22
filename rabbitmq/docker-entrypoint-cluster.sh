#!/bin/bash

echo determining host number
host_number=`cat /proc/sys/kernel/hostname | cut -d '.' -f1 | cut -d'-' -f2`
echo $host_number

sleep_time=$(($host_number*3))
echo sleeping for $sleep_time seconds for prevent on-start race-condition
sleep $sleep_time

exec /usr/local/bin/docker-entrypoint.sh "$@"
