#!/bin/bash
echo "all args passed to script: $@"
echo "all args passed to script as word"
echo "number of args passed to script: $#"
echo "script name: $0"
echo "first variable pass: $1"
echo "who is running current script: $USER"
echo "realpath: $(realpath $0)"
echo "directory of present script: $PWD"
echo "pid of current script: $$"
echo "home directory of current user: $HOME"
sleep 10 &
echo "pid of the command runnin in background now: $!"
wait $! #scripts waits until $! command complete
echo "line number: $LINENO"
echo "previous command exit status: $?"
echo "total time executed for this script: $SECONDS"