CREATE EXTERNAL TABLE IF NOT EXISTS t_kafka_nba.cardtransaction (key string, ts bigint, value string)
PARTITIONED BY (date_create string)
STORED AS PARQUET
LOCATION '/test/t_kafka_nba/bus_rtdm_eve/hive/raw.sv.cardtransaction'
