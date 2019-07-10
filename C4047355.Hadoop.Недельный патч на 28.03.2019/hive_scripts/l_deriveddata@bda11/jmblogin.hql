CREATE TABLE ${mart_environment}_deriveddata.jmblogin(
  client_pin string, 
  liteapp_flag string, 
  action_time string, 
  token_support string, 
  mobiledevice_ccode string, 
  platform_ccode string, 
  appversion_description string)
ROW FORMAT SERDE
	  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
	STORED AS INPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
	OUTPUTFORMAT
	  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
	TBLPROPERTIES ('kite.compression.type'='snappy');