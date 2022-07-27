#! /bin/bash
#This Script Generates a csv files for Memory, swap, and disk space
FILE1=./memory.csv
FILE2=./swap.csv
FILE3=./disk.csv
if [ ! -f "$FILE1" ];then
	echo "total(Mb),used(Mb),free(Mb),date(ymdHM)" >> memory.csv
fi
if [ ! -f "$FILE2" ];then
	echo "total(Mb),used(Mb),free(Mb),date(ymdHM)" >> swap.csv
fi 
if [ ! -f "$FILE3" ];then
	echo "total(Mb),used(Mb),free(Mb),date(ymdHM)" >> disk.csv
fi

free -m | awk -v date=$(date +%Y%m%d%H%M) 'NR==3{print $2","$3","$4","date}' >> memory.csv
free -m | awk -v date=$(date +%Y%m%d%H%M) 'NR==3{print $2","$3","$4","date}' >> swap.csv
df -m | grep -P '(?<![\w\x27])/(?![\w\x27])' | awk -v date=$(date +%Y%m%d%H%M) '{print $2","$3","$4","date}' >> disk.csv
