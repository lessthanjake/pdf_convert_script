#!/bin/bash
for file in *.pdf
do
	gs -q -dPDF -dNOPAUSE -sProcessColorModel=DeviceRGB -dUserCropBox -r300x300 -sDEVICE=pdfwrite -sPDFACompatibilityPolicy=1 -sOutputFile=./output/${file/.pdf/}.pdf ${file/.pdf/}.pdf -c quit
done
exit
