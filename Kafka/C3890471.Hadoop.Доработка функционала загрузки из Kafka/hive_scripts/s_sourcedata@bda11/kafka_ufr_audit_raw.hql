CREATE EXTERNAL TABLE s_sourcedata.kafka_ufr_audit_raw(
	  message string)
	ROW FORMAT SERDE 
	  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
	STORED AS INPUTFORMAT 
	  'org.apache.hadoop.mapred.TextInputFormat' 
	OUTPUTFORMAT 
	  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
	LOCATION
	  '/storage/s_sourcedata/db/kafka_ufr_audit'