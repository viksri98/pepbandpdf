@echo off

set score=%1

if not "%3" == "" (
		for /f %%v in ('sed "s|<Spatium.*<[/]Spatium>|<Spatium>%3</Spatium>|" style.xml') do (set "style=%%v")
		echo %style% > style.xml
)

sed -e '
  /<Style>/,/<[/]Style>/!b
  //!d;/<[/]Style>/!b
  r style.xml
  N
' %score% > temp.mscx

mkdir out
MuseScore3.exe -j job_windows.json
del temp.mscx

cd out
for %I in (*.png) do (
		magick convert %I -rotate -180 "r-%I"
		magick convert %I "r-%I" -smush 80 "%I.pdf"
		del "r-%I"
		del %I
)
cd ..
for /f %%v in ('sed "s|<Spatium.*<[/]Spatium>|<Spatium>1.15</Spatium>|" style.xml') do (set "style=%%v")
echo %style% > style.xml
move out %2
exit 0
