#!/bin/bash
cj=$1
dp="url/path"

if [ -z $(ps -e -o command | grep ^wget | awk '{print $4}' | awk -F / '{print $NF}' | sort | uniq | grep $cj) ] ; 
then /usr/bin/wget -O /dev/null http://$dp/$cj
#then /usr/bin/wget http://$dp/$cj
else echo "Another process $1 running" ;
