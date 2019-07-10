DROP TABLE IF EXISTS ${TMP_DATABASE}.factorpayment_hdim_tmp;

CREATE EXTERNAL TABLE ${TMP_DATABASE}.factorpayment_hdim_tmp(
	UK Double,
	DEAL_UK Double,
	SOURCE_CCODE String,
	PAYMENT_NUMBER String,
	PAYMENT_DATE String,
	REG_DATE String,
	CURRENCY_UK Double,
	PAYMENT_CUR_AMT String,--Double,
	COMMISS_CUR_AMT String,--Double,
	PAIDPROD_CUR_AMT String,--Double,
	REPAIDFIN_CUR_AMT String,--Double,
	OVRDPENALTY_CUR_AMT String,--Double,
	DEALSTATUS_UK Double,
	FACTORPAYMENTKIND_UK Double,
	DELETED_FLAG String,
	DEFAULT_FLAG String,
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
'${PATH_TO_TMP}/factorpayment_hdim_tmp';