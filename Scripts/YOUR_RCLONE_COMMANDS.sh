#!/bin/bash

Run_Rclone_Commands()
{
    while IFS= read -r i
    do
        echo "--- RUN YOUR COMMAND ---"
        echo
        echo $i
        echo
        echo "------------------------"
        ./$i
        echo "--------- END ----------"
        echo
    done< <(grep -v '^ *#' < PUT_YOUR_REMOTES_HERE.txt)
}

if [ -s "YOUR_RCLONE_COMMANDS.txt" ]; then
    Run_Rclone_Commands
else
    echo "Your YOUR_RCLONE_COMMANDS.txt is empty, please input your commands in it and try again"
    exit 1
fi