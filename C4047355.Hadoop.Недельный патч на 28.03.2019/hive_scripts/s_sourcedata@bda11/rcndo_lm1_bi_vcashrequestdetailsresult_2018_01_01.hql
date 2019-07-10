DROP TABLE IF EXISTS ${DATABASE}.rcndo_lm1_bi_vcashrequestdetailsresult_2018_01_01;
CREATE TABLE ${DATABASE}.rcndo_lm1_bi_vcashrequestdetailsresult_2018_01_01(
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
	SNOMINAL Decimal(38,2),
	SNOMINALTYPE String,
	COUNTFROMCLIENT Int,
	SUMFROMCLIENT Decimal(38,2),
	COUNTTOCLIENT Int,
	SUMTOCLIENT Decimal(38,2)
	)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
TBLPROPERTIES ('kite.compression.type'='snappy');