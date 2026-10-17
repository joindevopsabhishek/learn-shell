#!/bin/bash
starttime=$(date +%s)
endtime=$(date +%s)
echo "script started at : $starttime"
sleep 10
echo "script ended at : $endtime"
totaltime=$(($endtime-$starttime))
echo "total time taken : $totaltime Seconds"