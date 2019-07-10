DROP TABLE IF EXISTS ${TMP_DATABASE}.rcndo_lm1_bi_vcashrequestdetailsresult_2018_01_01_tmp;
CREATE EXTERNAL TABLE ${TMP_DATABASE}.rcndo_lm1_bi_vcashrequestdetailsresult_2018_01_01_tmp(
	CREDITORG_SBCODE String,
	CREDITORG_SNAME String,
	REQUESTTYPENAME String,
	SPOTTYPENAME String,
	SCLIENTPIN String,
	CONVERSIONDATE String,
	IDCASHREQUEST Int,
	ISBROKEN String,
	ISRETURN String,
	WORTHNAME String,
	SCATEGORY String,
	SCURRENCY String,
	SNOMINAL String,
	SNOMINALTYPE String,
	COUNTFROMCLIENT Int,
	SUMFROMCLIENT String,
	COUNTTOCLIENT Int,
	SUMTOCLIENT String
  )
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
'${PATH_TO_TMP}/rcndo_lm1_bi_vcashrequestdetailsresult_2018_01_01_tmp';