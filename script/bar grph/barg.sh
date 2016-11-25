#!/bin/bash



text=$1

export text
export newtext
echo "file: $text"
awk '{print $1, " " $21 " " $11 " " $6 " " $9 " " $25 }'  $text > testfile.tmp && mv testfile.tmp $text
awk ' gsub("-"," ", $1) ' $text > testfile.tmp && mv testfile.tmp $text
awk ' gsub("buff"," ", $3) ' $text > testfile.tmp && mv testfile.tmp $text
awk ' gsub("\+"," ", $3) ' $text > testfile.tmp && mv testfile.tmp $text
awk ' gsub("log"," ", $3) ' $text > testfile.tmp && mv testfile.tmp $text
awk ' gsub("\."," ", $3) ' $text > testfile.tmp && mv testfile.tmp $text
sort -t 't' -k1,1 -k2,2 -k3,3 $text > testfile.tmp && mv testfile.tmp $text


