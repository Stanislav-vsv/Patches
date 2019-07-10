CREATE TABLE ${DATABASE}.factorpaymentkind_ldim(
	UK Double,
	CCODE String,
	NAME String,
	DELETED_FLAG String,
	DEFAULT_FLAG String,
	DWSCMIX Double,
	AS_OF_DAY String,
	JOB_INSERT Double,
	JOB_UPDATE Double
	)
	ROW FORMAT SERDE
	  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
	STORED AS INPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
	OUTPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
	TBLPROPERTIES ('kite.compression.type'='snappy');