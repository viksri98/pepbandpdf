# PepBandPDF converter

## Requirements

- Musescore
- ImageMagick

## Usage
> $ pepbandpdf.sh [file] [output] [size] [offset]  

pepbandpdf takes a input file as a .mscx file with parts unformatted but created, and outputs pdfs in the output folder formatted for the UCSD pep band.  
size is an optional parameter which controls spacing between lines of music. A higher value means more space between lines, the default value is 1.15
Offset is an optional parameter which controls the x offset of the lyricist, to align it with the composer.
