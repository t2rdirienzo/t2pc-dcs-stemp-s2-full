
FILE=/tmp/${$}.txt

echo "START" > ${FILE}

while read line
do
  echo "$line" >> ${FILE}
done < "${1:-/dev/stdin}"

ciop-publish -m ${FILE}


