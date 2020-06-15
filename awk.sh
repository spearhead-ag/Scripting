#!/bin/bash

echo one two three four five | awk '{print $3,$4}'
echo 1 2 3 4 5 | awk '{print $3,$4}'
awk '/^st/' /home/kali/scripts/portfolio/week5/bmfiles
awk '/^cf/' /home/kali/scripts/portfolio/week5/bmfiles
awk -F: '{print $1}' /home/kali/scripts/portfolio/week5/bmfiles | head -4
awk -F: '$3 > 1000' /home/kali/scripts/portfolio/week5/bmfiles
awk "! /:$/" /home/kali/scripts/portfolio/week5/bmfiles