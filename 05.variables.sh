#!/bin/bash
starttime=$(date +%s)
echo "script started at : $starttime"
sleep 3
endtime=$(date +%s)
echo "script ended at : $endtime"
totaltime=$(($endtime-$starttime))
echo "total time taken: $totaltime Seconds"