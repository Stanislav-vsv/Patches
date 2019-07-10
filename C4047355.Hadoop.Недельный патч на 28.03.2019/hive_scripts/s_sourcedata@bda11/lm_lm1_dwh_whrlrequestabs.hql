CREATE TABLE ${DATABASE}.lm_lm1_dwh_whrlrequestabs(
	IDREQUEST Int,
	SPIN String,
	BMAIN String,
	SABS String,
	DEDITDATE String,
	IDEDITUSER Int
	)
	ROW FORMAT SERDE
	  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
	STORED AS INPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
	OUTPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
	TBLPROPERTIES ('kite.compression.type'='snappy');