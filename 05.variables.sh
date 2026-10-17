#!/bin/bash
starttime=$(date +%s)
endtime=$(date +%s)
echo "script started at : $starttime"
echo "script ended at : $endtime"
echo "total time: $($starttime+$endtime)"
