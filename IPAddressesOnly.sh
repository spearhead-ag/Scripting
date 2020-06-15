# ========================================================== #
# This script uses ip_info.sh and displays IP addresses only #
# Created by Anna Garay on 14 June 2020                      #
# ========================================================== #
#!/bin/bash
#set -x

#assigns output of ip_info.sh 
info="$(bash ip_info.sh)"

#pfilters and prints lines with "IP Address" only
echo "$info" | sed -n '/IP Address: / {p}' 

#wait 3secs before exit
read -t 3 -p " "