#!/bin/bash

dir=$1
cd $dir
for file in *.png; do
		convert $file -rotate -180 "r-$file"
		convert $file "r-$file" -smush 80 "$(sed 's/.png//' <<< $file).pdf"
		rm "r-$file"
		rm $file
done
cd -
exit 0
