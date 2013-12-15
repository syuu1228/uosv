#!/bin/sh
for i in *; do
	if [ "$i" = "Makefile" ]; then
		continue
	fi
	echo "$i: module/userdata/$i" >> bootfs.manifest
done
