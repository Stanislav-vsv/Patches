CREATE TABLE ${DATABASE}.fundingdelay_vhist(
	XK Double,
	TK String,
	EFFECTIVE_FROM String,
	EFFECTIVE_TO String,
	DEAL_UK Double,
	CLIENT_DEBTOR_UK Double,
	FUNDING_DELAY_DAYS Double,
	DELETED_FLAG String,
	DWSCMIX Double,
	AS_OF_DAY String,
	JOB_INSERT Double,
	JOB_UPDATE Double,
	VALIDFROM String,
	VALIDTO String
	)
	ROW FORMAT SERDE
	  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
	STORED AS INPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
	OUTPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
	TBLPROPERTIES ('kite.compression.type'='snappy');