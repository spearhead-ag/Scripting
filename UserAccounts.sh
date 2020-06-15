# ============================================================================== #
# This script filters users with "/bin/bash" login shell from "/etc/passw" file  #
# Created by Anna Garay on 14 June 2020                                        #
# ===============================================================================#
#!/bin/bash
#set x

#filters login shell with default "/bin/bash" shell
awk "/bash/" /etc/passwd > result.txt

#prints output of result.txt file based on keyword "bash"
echo "User Details with "/bin/bash" login shell from "/etc/passwd" file:"
awk 'BEGIN {
        FS=":";
        print("-----------------------------------------------------------------------------------------------------------------------------------");
        print "| \033[34mUser Name       \033[0m | \033[34mEP \033[0m | \033[34mUser ID\033[0m | \033[34mGID  \033[0m | \033[34mUser Fullname                       \033[0m | \033[34mUser Home Directory    \033[0m | \033[34mLogin Shell        \033[0m |";
        print("-----------------------------------------------------------------------------------------------------------------------------------");
        }
    {
    printf("| \033[33m%-16s\033[0m | \033[35m%-3s\033[0m | \033[35m%-7s\033[0m | \033[35m%-5s\033[0m | \033[35m%-36s\033[0m | \033[35m%-23s\033[0m | \033[35m%-19s\033[0m |\n", $1, $2, $3, $4, $5, $6, $7);
    }
    END{
    print("-----------------------------------------------------------------------------------------------------------------------------------");
}' result.txt

#wait 3secs before exit
read -t 3 -p " "

