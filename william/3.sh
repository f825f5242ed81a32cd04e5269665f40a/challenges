SUM=`history 5 | shasum -a 512`
for LINE in `cat ~/hashes`
do
	if echo $LINE | grep $SUM  
	then
		printf "Authenticated as ", `echo $LINE | awk {print $1}` 
	fi
done