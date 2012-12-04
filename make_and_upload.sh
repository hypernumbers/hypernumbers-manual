
#!/bin/bash
cd /home/gordon/manual
echo "update the version number"
release=`cat ./_config/_release`
echo "old $release"
major=`echo $release | cut -d. -f1`
minor=`echo $release | cut -d. -f2`
revision=`echo $release | cut -d. -f3`
revision=`expr $revision + 1`
newversion=$major.$minor
newrelease=$major.$minor.$revision
echo "new release $newrelease"
echo "$newrelease" > ./_config/_release
cp ./_config/_conf.py conf.py
now=`date`
echo "version = '$newversion'" >> conf.py
echo "release = '$newrelease'" >> conf.py
echo "Documentation Version" > ./contents/welcome/version.rst
echo "=====================" >> ./contents/welcome/version.rst
echo "" >> ./contents/welcome/version.rst
echo "Version: $newrelease" >> ./contents/welcome/version.rst
echo "Generated: $now" >> ./contents/welcome/version.rst
echo "making html"
make html
echo "copying favicon"
cp favicon.ico ./_build/html
echo "making latex"
make latex
echo "making epub"
make epub
cd ./_build/epub
ebook-convert BuildingApplicationsWithVixo.epub BuildingApplicationsWithVixo.mobi
scp BuildingApplicationsWithVixo.* gordon@hypernumbers.com:/hn/files-www/vixo2/
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