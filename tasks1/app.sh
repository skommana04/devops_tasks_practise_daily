#!/bin/bash


b=$(df -h / | tail -1 | awk -F " " '{print $5}' | sed s:%::g)
echo "$b"

if [ $b -gt 75 ]; then
	echo "$(date) warning greater than 75, $b" >> m.log
#	echo "$(date) warning greater than 75, $b" | tee -a m.log
else
	echo "$(date) normal" >> m.log
fi
#printf "$a"
