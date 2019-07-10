CREATE EXTERNAL TABLE ${TMP_DATABASE}.lm_lm1_dwh_whrlrequestabs_tmp(
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
LOCATION
'${PATH_TO_TMP}/lm_lm1_dwh_whrlrequestabs_tmp';