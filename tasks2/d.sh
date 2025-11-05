a=$(ping -c 3 www.google.com)
status=$?
echo "$a"
echo "$status"

if [ $status -eq 0 ]; then
	echo "Network is ok"
else
	echo "Network down"
fi
