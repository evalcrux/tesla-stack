dir=`pwd`
cd 
cd workspace/elastic-stack/current/kibana

KIBANA1=kibana.pid
KIBANA2=kibana.pid
#./routing_allocation-disable.sh
echo Checking to kill kibana1..
if [ -f $KIBANA1 ]; then
  echo "Killing kibana at pid `cat kibana.pid`.." && kill `cat kibana.pid`
  rm $KIBANA1
fi

echo Checking to kill kibana2..
if [ -f $KIBANA2 ]; then
  echo "Killing kibana2 at pid `cat kibana2.pid`.." && kill `cat kibana2.pid`
  rm $KIBANA2
fi
#echo "Klling kibana at pid `cat kibana.pid`.." && kill `cat kibana.pid`
#echo "Klling kibana2 at pid `cat kibana2.pid`.." && kill `cat kibana2.pid`
#rm kibana.pid kibana2.pid
