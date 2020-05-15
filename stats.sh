#!/bin/sh

filename=$1
line=$(head -n 1 $filename)
echo $line
line2=$(tail -n 1 $filename)
echo $line2
ydate=$(date +"%D")

while [ true ] 
do	

	d=$(date +"%D")
	if [ "$ydate" != "$d" ]; then
	   python yday.py
	   ydate=$d
	fi

	wget -O - http://vrici.lojban.org/~cowan/XML/tagsoup/tagsoup-1.2.1.jar >> tagsoup-1.2.1.jar

	wget --no-check-certificate -O states.html $line
	wget --no-check-certificate -O county.html $line2

	java -jar tagsoup-1.2.1.jar --files states.html
	java -jar tagsoup-1.2.1.jar --files county.html

	python xhtmltodatabase.py states.xhtml county.xhtml

	rm states.html states.xhtml county.html county.xhtml

	sleep 1800
done