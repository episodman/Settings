echo "- process name : $1"
i=1
RAWIN=$(ps -o pid,user,%mem,command ax | sort -b -k3 -r | grep $1| head -n 1)
for k in $RAWIN
do
    PID=$(echo $k | cut -d: -f1)
    OWNER=$(echo $k | cut -d: -f2)
    PERCENT=$(echo $k | cut -d: -f3)
    NAME=$(echo $k | cut -d: -f4)
    POSTFIX=$(echo $k | cut -d: -f5)
    echo "PID: $PID"
    break               
done
  
echo $PID

while [ $i -le 20 ]
do             
    echo $i
    MEMORY=$(pmap $PID | tail -n 1)
    echo "Memory: $MEMORY KB"
    i=$(($i+1))
    sleep 1
done

