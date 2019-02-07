#!/bin/bash
[ ! -e raw ] && mkdir raw
cd raw
BASEURL="ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline"
for i in {0001..0972}  #you are about to download ~20 GB of files
do
        echo $i, $(date +%T)
        file=pubmed19n"$i".xml.gz
        checksum=pubmed19n"$i".xml.gz.md5
        curl -o $file $BASEURL/$file
        curl -o $checksum $BASEURL/$checksum
done
