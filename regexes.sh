#!/bin/bash

#all sed statements
grep -r "^sed"

#all lines that start with the letter m
grep -r "^m"

#all lines that contain three digit numbers
grep -r '^[0-9]\{3,3\}'

#all echo statements with at least three words
grep -r 'echo .*\"[A-Z][a-z]\{3,\}.*\"'

#all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).
grep -ri '\"[A-Za-z0-9~!*#?].*\"'