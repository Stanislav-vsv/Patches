CREATE EXTERNAL TABLE s_sourcedata.kafka_ufr_audit(
	  createdate string , 
	  applicationcode string , 
	  servicename string , 
	  customerpineq string , 
	  employeeid string , 
	  employeelogin string , 
	  employeebranchnumber string , 
	  employeebranchmnemonic string , 
	  employeeeqprofile string , 
	  channel string , 
	  operation string , 
	  statuscode string , 
	  esiaaccountid string )
	ROW FORMAT SERDE 
	  'org.openx.data.jsonserde.JsonSerDe' 
	WITH SERDEPROPERTIES ( 
	  'ignore.malformed.json'='true') 
	STORED AS INPUTFORMAT 
	  'org.apache.hadoop.mapred.TextInputFormat' 
	OUTPUTFORMAT 
	  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
	LOCATION
	  '/storage/s_sourcedata/db/kafka_ufr_audit';