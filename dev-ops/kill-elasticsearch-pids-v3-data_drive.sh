cd /data/elasticsearch
if [ -z "$CLUSTER_NAME" ]; then
  read -p "CLUSTER_NAME env variable not set, enter cluster name to kill:" CLUSTER_NAME
fi
#CLUSTER_NAME=data-drive.2019-01-02
DATA_DIR=/data/data_drive/elasticsearch
for f in ${DATA_DIR}/${CLUSTER_NAME}/pids/*.pid; do kill `cat $f` && echo "killed Elasticsearch at pid $f"; done
#for f in ${DATA_DIR}/${CLUSTER_NAME}/pids/*.pid; do if [ ! -z $f]; then kill `cat $f`;fi;done  && echo "killed Elasticsearch at pid $f"; done
