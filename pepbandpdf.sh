#!/bin/bash

score=$1

if [ -n $3 ]; then
		echo "$(sed "s|<Spatium>.*<[/]Spatium>|<Spatium>$3</Spatium>|" style.xml)" > style.xml	
fi

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
echo "$(sed "s|<Spatium>.*<[/]Spatium>|<Spatium>1.15</Spatium>|" style.xml)" > style.xml	
mv out $2
exit 0
