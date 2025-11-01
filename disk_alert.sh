#!/bin/bash

a=$(df -h / | tail -1 | awk -F " " '{print $5}' | tr -d "%")

#echo $a

if [ $a -gt 75 ]; then
	echo "$(date) High $a" | tee -a alert.log
	#echo "$(date) High $a" >> alert.log
else
	echo "$(date) normal" >> alert.log
fi
