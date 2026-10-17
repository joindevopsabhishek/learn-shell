#!/bin/bash
starttime=$(date +%s)
endtime=$(date +%s)
echo "script started at : $starttime"
echo "script ended at : $endtime"
totaltime: $(($endtime-$starttime))"
echo "total time take : $totaltime Seconds" 