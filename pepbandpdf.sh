#!/bin/bash

score=$1

sed -e '
  /<Style>/,/<[/]Style>/!b
  //!d;/<[/]Style>/!b
  r style.xml
  N
' $score > temp.mscx

mkdir out
musescore -j job.json
rm temp.mscx

cd out
for file in *.png; do
		convert $file -rotate -180 "r-$file"
		convert $file "r-$file" -smush 80 "$(sed 's/.png//' <<< $file).pdf"
		rm "r-$file"
		rm $file
done
cd ..
mv out $2
exit 0
