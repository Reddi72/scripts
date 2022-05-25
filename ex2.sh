#!/bin/bash
pwd
ls
date
awk 'BEGIN {print "hi"}'

awk 'BEGIN{print"==========working on /etc/passwd file======="} /prasad/{print $0}END {print "=========completed work on /etc/passwd file====="}' /etc/passwd

