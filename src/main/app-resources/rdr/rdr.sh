
FILE=/tmp/${$}.txt
while read line
do
  echo "$line" >> ${FILE}
done < "${1:-/dev/stdin}"

ciop-publish ${FILE}


