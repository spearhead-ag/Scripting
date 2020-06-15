#!/bin/bash
awk 'BEGIN {FS=","; currency="$"; print "Name      |  Price"}
{ printf "%-10s| %c%10.2f\n", $1, currency, $2 }
END{printf "There are %d items total!\n", NR}' ./info.txt