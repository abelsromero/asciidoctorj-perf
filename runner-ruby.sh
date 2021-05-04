#/bin/bash

TIMEFORMAT=%R
i=0
limit=50

while [ $i -le $limit ]
do
 (time asciidoctor-pdf converter/web-application-reference.adoc -o build/generated.pdf) 2>> output_ruby.txt
 ((i++))
done;
