DROP TABLE IF EXISTS ${TMP_DATABASE}.dealfactoring_hdim_tmp;

CREATE EXTERNAL TABLE ${TMP_DATABASE}.dealfactoring_hdim_tmp(
	UK Double,
	DEALTYPE_UK Double,
	START_DATE String,
	SUPPLY_DATE String,
	END_FACT_DATE String,
	END_PLAN_DATE String,
	PAYMENT_DELAY_DATE String,
	DELAY_ADDPERIOD_DATE String,
	CLIENT_DEBTOR_UK Double,
	CLIENT_UK Double,
	DEALSTATUS_UK Double,
	DESCRIPTION String,
	PAYMENT_DELAY_DAYS Double,
	PAYDELAYTYPE_FLAG String,
	CURRENCY_UK Double,
	FUNDING_DAYS Double,
	DEAL_AMT String,--Double,
	COMISSSHAREMETHOD_UK Double,
	DQ_CONTROL_UK_LIST String,
	DQ_MISTAKECOST_UK Double,
	DWSCMIX Double,
	DELETED_FLAG String,
	DEFAULT_FLAG String,
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
'${PATH_TO_TMP}/dealfactoring_hdim_tmp';