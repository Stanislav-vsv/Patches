DROP TABLE IF EXISTS ${DATABASE}.dealfactoring_hdim;

CREATE TABLE ${DATABASE}.dealfactoring_hdim(
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
	DEAL_AMT Decimal(38,2),--Double,
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
	TBLPROPERTIES ('kite.compression.type'='snappy');