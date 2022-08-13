@echo off

for %%i in (*.png) do (
		echo "Processing %%i"
		magick convert "%%i" -rotate -180 r.png
		magick convert "%%i" r.png -smush 80 "%%i.pdf"
		del r.png
)
