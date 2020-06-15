# ============================================================================#
# This script downloads Microsoft Updates dataset and filters specific output #
# Created by Anna Garay on 14 June 2020                                       #
# ============================================================================#
#!/bin/bash
#set -x

Red='\033\e[31m'
White='\033\e[97m'
Blue='\033\e[104m'

start_date=`date`
echo "Start time: $start_date"

printf "Downloading Microsoft Updates ...\n\n"

#url to download
URL_source=https://www.catalog.update.microsoft.com/Search.aspx?q=2020-05

#output file
URL_output=./webData.txt

wget -O $URL_output $URL_source

#removes all unnecessary lines
sed '635,1159!d; /tr/d' $URL_output > filter.txt

#filters all given values
sed 's/\s<.*//g' filter.txt > output

#remove all leading and trailing white spaces and deletes blank spaces
sed 's/^[ \t]*//;s/[ \t]*$//;/^$/d' output > output1

#replaced last character with ":" as separator
#deletes lines with ":" as first character
#deletes lines with "n" as first character 
sed 's/\s$/:/;/^:/d;/^n/d' output1 > dataset

#set -x
#concatenates every four lines
cat dataset | paste - - - - > datasetFinal

#filter records pertaining to Windows 10 and Windows Server 2012 only
awk "/Windows 10/;/Windows Server 2012/" datasetFinal > output2

#remove blank spaces
sed 's/\:[[:blank:]]/:/g' output2 > finalOutput
#echo $'\n'

echo "Required Security Updates for Windows 10 and Windows Server 2012"

awk 'BEGIN {
        FS=":";
        print("============================================================================================================================================================================");
        print "| \033[104m                                                                                                    \033[0m | \033[104m                            \033[0m | \033[104m                   \033[0m | \033[104m            \033[0m |";
        print "| \033[104m                                               Title                                                \033[0m | \033[104m          Products          \033[0m | \033[104m   Classification  \033[0m | \033[104mLast Updated\033[0m |";
        print "| \033[104m                                                                                                    \033[0m | \033[104m                            \033[0m | \033[104m                   \033[0m | \033[104m            \033[0m |";
        print("============================================================================================================================================================================");
        }
    {

        printf("| \033[104m%-100s\033[0m | \033[104m%-28s\033[0m | \033[104m%-19s\033[0m | \033[104m%-12s\033[0m |\n", $1, $2, $3, $4);
    }
    END{
   print("============================================================================================================================================================================");
   echo "/n" 
}' finalOutput #>> AssignmentOutput 


echo "${Red}\033[5mNOTE: ${White}\033[25m"
echo "  There are 25 Microsoft Product Updates."
echo "  For functional specifications, published items are relevant for Windows 10 and Windows Server 2012 users only."

echo $'\n'
end_date=`date`
echo "End time: $end_date"
echo $'\n'

#read -t 2 -p " "

#printf("| \033[5m%-100s\033[0m | \033[104m%-28s\033[0m | \033[104m%-19s\033[0m | \033[104m%-12s\033[0m |\n", $1, $2, $3, $4)

