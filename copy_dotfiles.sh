#!/bin/sh

for file_name in .*
do
	cp "$file_name" ~/
	if [ "$?" -eq 0 ]; then
		echo ~/"$file_name"にコピーしたよ
	fi
done
