PATCH_HOME_DIR=/live_system/l_kafka_nba/
TOPIC_TAR_NAME=bus_rtdm_eve
hadoop fs -mkdir ${PATCH_HOME_DIR}/${TOPIC_TAR_NAME}/
hadoop fs -mkdir ${PATCH_HOME_DIR}/${TOPIC_TAR_NAME}/topics/
hadoop fs -mkdir ${PATCH_HOME_DIR}/${TOPIC_TAR_NAME}/topics/raw.sv.cardtransaction/
hadoop fs -mkdir ${PATCH_HOME_DIR}/${TOPIC_TAR_NAME}/logs/
hadoop fs -mkdir ${PATCH_HOME_DIR}/${TOPIC_TAR_NAME}/logs/raw.sv.cardtransaction/
hadoop fs -mkdir ${PATCH_HOME_DIR}/${TOPIC_TAR_NAME}/hive/
hadoop fs -mkdir ${PATCH_HOME_DIR}/${TOPIC_TAR_NAME}/hive/raw.sv.cardtransaction/
