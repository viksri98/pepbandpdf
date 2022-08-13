@echo off

for %I in (*.png) do (
		echo "Processing %I"
		magick convert %I -rotate -180 r.png
		magick convert %I r.png -smush 80 "%~nI.pdf"
		del r.png
		del %I
)
