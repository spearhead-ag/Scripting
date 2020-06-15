# ========================================================= #
# This script runs a guessing game. User wins if input = 42 #
# ========================================================= #
#!/bin/bash
#set -x

#This function prints a given error
printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}

#This function will get a value between the 2nd and 3rd arguments
getNumber()
{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY> $3 )); do
        printError "Input must be between $2 and $3"
        read -p "$1: "
    done
}

echo "Guess the Right number!"
getNumber "Please type a number between 1 and 100" 1 100
echo "Thank you!"
#set -x

#Game repeats until user enters "42"
while [ $REPLY -ne 42 ] 
do
    #If the number is less than 42, the game should print 'Too Low!'
    if [ $REPLY -le 42 ]; then
        echo "$REPLY is too low!"
        echo $'\n'
    else
        #If the number is greater than 42, the game should print 'Too High!'
        if [ $REPLY -ge 42 ]; then
            echo "$REPLY is too High!"
            echo $'\n'
        fi
    fi
    getNumber "Please type a number between 1 and 100" 1 100
    echo "Thank you!"
    #If the number is 42, the game should print 'Correct!'
    if [ $REPLY -eq 42 ]; then
    echo "$REPLY is the Right number. Good guess!"
    exit 0
    fi
done