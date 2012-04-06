#!/bin/bash
echo "deleting old contents"
rm -rf contents
rm -rf _images
rm -rf _static
rm -rf sources
rm objects.inv
rm searchindex.js
rm search.html
rm index.html
echo "unzipping and unpacking new contents"
gunzip doco.tar.gz
tar -xvf doco.tar
echo "over and out..."