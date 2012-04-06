#!/bin/bash
cd /home/gordon/manual
echo "making html"
make html
echo "making latex"
make latex
cd ./_build/latex
echo "making pdf"
make all-pdf
echo "uploading pdf"
scp BuildingApplicationsWithHypernumbers.pdf gordon@hypernumbers.com:/hn/files-www/documentation/files/
cd ../html
echo "tarring and zipping html"
tar -cvf doco.tar *
gzip doco.tar
echo "uploading zipped html"
scp doco.tar.gz gordon@hypernumbers.com:/hn/files-www/documentation/
cd /home/gordon/manual
echo "over and out..."