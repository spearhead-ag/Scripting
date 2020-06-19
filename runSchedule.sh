# ====================================================================== #
# This script executes the web downloader for Microsoft Security Updates #
# Run time is every 3 minutes and displays at the terminal               #
# Created by Anna Garay dated 18 June 2020                               #
# ====================================================================== #
#!/bin/bash

#runs MicrosoftUpdates.sh every 3mins and sleeps for 15 minutes afterwards
#output can be generated via terminal or file

while true
do
 /home/kali/scripts/assignment/MicrosoftUpdates.sh
 sleep 3m
done