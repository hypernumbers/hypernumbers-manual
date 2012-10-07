#!/bin/bash
echo "deleting old contents"
rm -rf documentation
mkdir documentation
echo "unzipping and unpacking new contents"
cd ./documentation/
gunzip ../doco.tar.gz
tar -xvf doco.tar
echo "over and out..."