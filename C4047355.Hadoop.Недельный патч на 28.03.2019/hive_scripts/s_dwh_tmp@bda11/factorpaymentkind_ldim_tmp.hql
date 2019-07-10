CREATE EXTERNAL TABLE ${TMP_DATABASE}.factorpaymentkind_ldim_tmp(
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
LOCATION
'${PATH_TO_TMP}/factorpaymentkind_ldim_tmp';