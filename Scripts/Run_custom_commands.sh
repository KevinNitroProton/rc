#!/bin/bash

Run_Rclone_Commands()
{
    while IFS= read -r i
    do
        echo "--- RUN YOUR COMMAND ---"
        echo
        echo "$i"
        echo
        echo "------------------------"
        echo
        eval "./$i"
        echo
        echo "--------- END ----------"
        echo
        echo "************************"
        echo
    done< <(grep -v '^ *#' < YOUR_RCLONE_COMMANDS.txt)
}

if [ -s "YOUR_RCLONE_COMMANDS.txt" ]; then
    Run_Rclone_Commands
else
    echo "Your YOUR_RCLONE_COMMANDS.txt is empty, please input your commands in it and try again"
    exit 1
fi