touch /home/alexander/result
l=0
while [ $l -eq 0 ];
do
echo "=0"
sleep 1
l=$(stat /home/alexander/result | grep -o 'Size:\s[0-9]*' | awk '{print $2}')
done
echo "!=0"
rm /home/alexander/result
