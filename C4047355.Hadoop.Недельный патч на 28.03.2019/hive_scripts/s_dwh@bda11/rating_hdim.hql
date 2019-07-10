CREATE TABLE ${DATABASE}.rating_hdim(
	UK Double,
	CCODE String,
	NAME String,
	START_DATE String,
	END_DATE String,
	JOB_INSERT Double,
	DWSCMIX Double,
	VALIDFROM String,
	VALIDTO String,
	DELETED_FLAG String,
	DEFAULT_FLAG String,
	AS_OF_DAY String,
	JOB_UPDATE Double,
	RATINGTYPE_UK Double
	)
	ROW FORMAT SERDE
	  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
	STORED AS INPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
	OUTPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
	TBLPROPERTIES ('kite.compression.type'='snappy');