#!/bin/bash
if [ "$1" != pwd ]; then
	cd $1
fi
if [ ! -e "helper.txt" ];then
	touch helper.txt
	ls > helper.txt
	echo Welcome to the Big Brother
else
	while read LINE; do
		if [[ ! -e $LINE ]]; then
			echo File deleted: $LINE
		fi
	done < helper.txt
	touch helper2.txt
	ls > helper2.txt
	while read LineList;do
		exist="no"
		while read Line; do
			if [[ "$LineList" == "$Line" || "$LineList" == "helper2.txt" ]]; then
	                       exist="yes"		
			fi
		done < helper.txt

		if [[ $exist == "no" ]];then
			if [[ -d $LineList ]];then
			       echo Folder created: $LineList
			else
			       echo File created: $LineList
			fi
		fi
	done < helper2.txt
	rm helper2.txt 	
	ls > helper.txt
	
fi
