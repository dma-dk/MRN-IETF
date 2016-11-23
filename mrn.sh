#!/bin/bash

if [ "$1" = "pdf" ]; then
   cd adoc
   asciidoctor-pdf -r asciidoctor-diagram identity.adoc -D ../target -a imagesdir=../images/
   cd ..
   exit
   
elif [ "$1" = "mmark" ]; then   
   rm -rf target/ 
   mkdir target

   ./mrn/mmark -xml2 -page mrn/mrn.md > target/x.xml 
   xml2rfc --text target/x.xml
   rm target/x.xml
   mv target/x.txt target/mrn.txt
   exit
elif [ "$1" = "html" ]; then
   asciidoctor -r asciidoctor-diagram website/site.adoc -D target
   exit
elif [ "$1" = "site" ]; then
   echo "Checking for changes to the faq"
   git status
   if ! git diff-index --quiet HEAD --; then
     echo "There are uncommitted changes"
     exit 1
   fi
   rm -rf target/
   asciidoctor -r asciidoctor-diagram website/site.adoc -D target

   ./mrn/mmark -xml2 -page mrn/mrn.md > target/x.xml 
   xml2rfc --text target/x.xml
   rm target/x.xml
   mv target/x.txt target/mrn.txt
   
#   mkdir -p target/images
#   cp images/*.png target/images/
   
   git checkout gh-pages
   cp target/site.html index.html
   cp target/mrn.txt mrn.txt
#   mkdir -p ../identity/images
#   cp target/images/* ../identity/images/
   git add index.html
   git add mrn.txt

#   git add ../identity/images/*
   git commit -m "update documentation"
   git push
   git checkout master
   exit   
elif [ -z "$1" ]; then 
    echo Usage: $0 target
    echo where target is:
else
    echo Unknown target: "$1"
    echo Valid targets are:
fi

echo "  pdf        Generates documentation in pdf"
echo "  html       Generates documentation in html"
echo "  site       Generates and updates mrn.maritimecloud.netdocumentation in html"