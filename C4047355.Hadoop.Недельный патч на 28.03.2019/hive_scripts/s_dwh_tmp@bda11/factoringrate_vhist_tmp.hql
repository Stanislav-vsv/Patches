DROP TABLE IF EXISTS ${TMP_DATABASE}.factoringrate_vhist_tmp;

CREATE EXTERNAL TABLE ${TMP_DATABASE}.factoringrate_vhist_tmp(
	XK Double,
	CLIENT_DEBTOR_UK Double,
	CLIENT_UK Double,
	LOWLIMIT_DAYS Double,
	RATETYPE_UK Double,
	HIGHLIMIT_DAYS Double,
	INT_RATE String,--Double,
	EFFECTIVE_FROM String,
	EFFECTIVE_TO String,
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
LOCATION
'${PATH_TO_TMP}/factoringrate_vhist_tmp';