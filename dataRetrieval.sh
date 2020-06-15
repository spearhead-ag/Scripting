#!/bin/bash

content=$(curl -sS "https://www.catalog.update.microsoft.com/Search.aspx?q=2020-05")
echo $content

#!/bin/bash
#set -x

#30 3 * * * touch ../Downloads

#while true
#do
#URL=https://www.catalog.update.microsoft.com/Search.aspx?q=2020-05
    #read -p "Type URL to download or type 'exit' to quit: " ans
    #if [[ "$ans" == "exit" ]]; then
    #    echo $'\n'
    #    echo "Goodbye."
    #    exit 0
    #fi
#wget $URL -P ./Downloads
#grep -r 'Update for Windows Server 2012'
#LOC="$1"
#DEG="$2"

#LOCATION=$(sed -e "s/ /%20/g" <<<"$LOC")
#content=$(curl -sS "https://www.catalog.update.microsoft.com/Search.aspx?q=2020-05?loc=$LOCATION&deg=$DEG")

#echo $content

#grep -r 'echo .*\"[Windows10].*\"'
#done


#Title="$1"
#DEG="$2"
# HTML encode string as %20
#LOCATION=$(sed -e "s/ /%20/g" <<<"$Title")
#content=$(curl -sS "https://www.catalog.update.microsoft.com/Search.aspx?q=2020-05/loc=$Location")
#echo $content \ jq .