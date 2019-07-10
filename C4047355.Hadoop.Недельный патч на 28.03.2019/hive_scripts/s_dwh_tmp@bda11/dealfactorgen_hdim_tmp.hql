DROP TABLE IF EXISTS ${TMP_DATABASE}.dealfactorgen_hdim_tmp;

CREATE EXTERNAL TABLE ${TMP_DATABASE}.dealfactorgen_hdim_tmp(
	UK Double,
	CLIENT_UK Double,
	CURRENCY_UK Double,
	DEAL_AMT String,--Double,
	START_DATE String,
	END_PLAN_DATE String,
	END_FACT_DATE String,
	CBRISKGROUP_UK Double,
	DEALTYPE_UK Double,
	DELETED_FLAG String,
	DEFAULT_FLAG String,
	DWSCMIX Double,
	AS_OF_DAY String,
	VALIDFROM String,
	VALIDTO String,
	JOB_INSERT Double,
	JOB_UPDATE Double,
	REPAYMENTORDER_INT_UK Double,
	REPAYMENTORDER_PRI_UK Double,
	DQ_MISTAKECOST_UK Double,
	DQ_CONTROL_UK_LIST String
  )
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
'${PATH_TO_TMP}/dealfactorgen_hdim_tmp';