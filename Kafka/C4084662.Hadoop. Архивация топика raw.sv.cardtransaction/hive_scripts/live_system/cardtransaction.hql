CREATE EXTERNAL TABLE IF NOT EXISTS l_kafka_nba.cardtransaction (key string, ts bigint, value string)
PARTITIONED BY (date_create string)
STORED AS PARQUET
LOCATION '/live_system/l_kafka_nba/bus_rtdm_eve/hive/raw.sv.cardtransaction'
