# PepBandPDF converter

## Requirements

- ImageMagick
- Ghostscript (Possibly)
- Sed (Optional)
- MuseScore (Optional)

## Usage (full)
> pepbandpdf.bat [file] [output] [size]

pepbandpdf takes a input file as a .mscx file with parts unformatted but created, and outputs pdfs in the output folder formatted for the UCSD pep band.  
size is an optional parameter which controls spacing between lines of music. A higher value means more space between lines, the default value is 1.15  
For this full functionality, Sed and MuseScore are required.

## Usage (pepflip)
> pepflip.bat

place the pepflip.bat script in a folder of pre-sized .png parts and double-click to run. Pepflip will rotate a copy and stitch them together.

## EXPERIMENTAL
This Windows version is almost entirely untested, written by someone who has never written a bat program and cannot run a bat script themselves.
Use it at your own risk.  

You will need MuseScore3.exe and Sed to be in your %PATH% if using the full script
