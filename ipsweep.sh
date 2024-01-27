#!/bin/bash

if [ "$1" == " " ]
	then 
		echo "You need to put an IP address !"
		echo "Syntaxe : "./ipsweep.sh 192.168.1""

else
	for ip in `seq 1 254`; do
		ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" |
		ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> iplist.txt &
	done
fi

echo " "
echo "Complete - you can find the list of IP address in iplist.txt"
