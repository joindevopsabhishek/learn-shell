#!/bin/bash
echo "all args passsed to script: $@"
echo "number of args passed to script: $#"
echo "script name: $0"
echo "first variable pass: $1"
echo "who is running current script: $USER"
echo "realpath: $(realpath $0)"
echo "directory of present script: $PWD
echo "pid of current script: $$"
echo "home directory of current user: $HOME"