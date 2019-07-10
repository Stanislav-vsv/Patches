CREATE TABLE ${DATABASE}.ratingtype_ldim(
	UK Double,
	CCODE String,
	NAME String,
	DELETED_FLAG String,
	DWSCMIX Double,
	JOB_INSERT Double,
	DEFAULT_FLAG String,
	AS_OF_DAY String,
	JOB_UPDATE Double
	)
	ROW FORMAT SERDE
	  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
	STORED AS INPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
	OUTPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
	TBLPROPERTIES ('kite.compression.type'='snappy');