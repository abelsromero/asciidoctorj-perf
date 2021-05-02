#/bin/bash

./gradlew clean installDist

TIMEFORMAT=%R
i=0
limit=50

while [ $i -le $limit ]
do
 (time ./converter/build/install/converter/bin/converter pdf converter/web-application-reference.adoc) 2>> out.txt
 ((i++))
done;
