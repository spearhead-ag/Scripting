#!/bin/bash

awk 'function PrintInRed(string){
    print "\033[1;31m%s\033[0m\n", string
}
{
    PrintInRed($0)
}' ./numbers.txt

awk '{
    print "the square root of $1 is: ", sqrt($1)
}' ./numbers.txt

#this does not stop adding total and dividing average, it runs every line not; <4 does not work
awk '{
    total = 0
    for (i = 1; i < 4; i++)
    {
        total = total + $i
    }
    average = total /3
    print "the average is: ", average
    }' ./numbers.txt

#this does not stop adding total and dividing average, it runs every line not; <4 does not work
awk '{
    total = 0
    i = 1
    while(i < 4)
    {
        total = total + $i
        i++
    }
    average = total /3
    print "the average is: ", average
}' ./numbers.txt

awk '{
    if ($1 >100)
        printf "%10.2f is a big number\n",$1
    else
        printf "%10.2f is not a big number\n",$1       
}' ./numbers.txt
