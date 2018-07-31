#!/bin/bash
git config --global credential.helper "cache --timeout=90000" #4 horas sem senha no git
A=0
while [ true ]; do
	echo "a" >> a.txt;
	let A=A+1;
	git add *
	git commit -m "new"
	git pull
	git push
done

