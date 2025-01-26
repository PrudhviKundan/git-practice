#!/bin/bash

#special variable are @, #, 0 , pwd
echo "All variables passed to the script : $@"
echo "Number of variable passed : $#"
echo "Script name : $0"
echo "Current working directory : $PWD"
echo "Home directory of current user : $HOME"
echo "ProcessID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"
