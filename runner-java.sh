#/bin/bash

./gradlew clean installDist

TIMEFORMAT=%R

i=0
readonly limit=50
readonly PREFIX=$(date +"%y%m%d-%H%M%S")  

while [ $i -le $limit ]
do
 (time ./converter/build/install/converter/bin/converter pdf converter/web-application-reference.adoc) 1>> "${PREFIX}_java_convert_times.txt" 2>> "${PREFIX}_java_total_jvm_times.txt"
 ((i++))
done;
