#!/bin/bash
cd /home/gordon/manual
echo "making html"
make html
echo "making latex"
make latex
echo "making epub"
make epub
cd ./_build/epub
make mobi BuildingApplicationsWithVixo.epub BuildingApplicationsWithVixo.mobi
scp BuildingApplicationsWithVixo.* gordon@hypernumbers.com:/hn/files-www/vixo2/
ebook-convert
cd ../latex
echo "making pdf"
make all-pdf
echo "uploading pdf"
scp BuildingApplicationsWithVixo.pdf gordon@hypernumbers.com:/hn/files-www/vixo2/
cd ../html
echo "tarring and zipping html"
rm doco.tar.gz
tar -cvf doco.tar *
gzip doco.tar
echo "uploading zipped html"
scp doco.tar.gz gordon@hypernumbers.com:/hn/files-www/vixo2/
cd /home/gordon/manual
echo "over and out..."