#/bin/bash

TIMEFORMAT=%R
i=0

readonly limit=50
readonly PREFIX=$(date +"%y%m%d-%H%M%S")

while [ $i -le $limit ]
do
 (time asciidoctor-pdf converter/web-application-reference.adoc -o build/generated.pdf) 2>> "${PREFIX}_ruby_times.txt"
 ((i++))
done;
