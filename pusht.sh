#!/bin/bash
git config --global credential.helper "cache --timeout=90000" #4 horas sem senha no git
A=0
while [ true ]; do
	echo "t" >> t.txt;
	let A=A+1;
	git add t.txt
	git commit -m "new"
	git pull
	git push
done

