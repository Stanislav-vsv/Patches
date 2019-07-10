DROP TABLE IF EXISTS ${mart_environment}_deriveddata_tmp.jmblogin_tmp;
CREATE TABLE ${mart_environment}_deriveddata_tmp.jmblogin_tmp
stored as parquet
AS
    with t0 as (select 
	row_number() over(partition by e1.client_uk order by e1.action_time desc) as rn,
	e1.client_uk,
	e1.mobiledevice_uk,
	e1.liteapp_flag,
	e1.action_time,
	e1.procsrcaction_name
	from ${environment}_dmacrm.etechoperation_stran e1
	where e1.deleted_flag<>'Y'
		and e1.tk like 'M2~%'
		and lower(e1.procsrcaction_name) like  'successful%login%'),
t1 as (select * from t0 where rn=1),
t2 as (select 
	a.client_uk,
	a.mobiledevice_uk,
	a.effective_from,
	a.dictionary_platform_uk,
	c2.description as platform_ccode,
	case when d1.mobiledevice_uk is not null then 'Y' else 'N' end as token_support, 
	a.dictionary_appversion_uk,
	c1.description as appversion_description
	from ${environment}_dwh.clntmobiledeviceinfo_vhist a
	left join ${environment}_dwh.dictionary_sdim c1
		on a.dictionary_appversion_uk=c1.uk and c1.dictionarytype_uk in (57958122509) and c1.default_flag<>'Y'
	left join ${environment}_dwh.dictionary_sdim c2
		on a.dictionary_platform_uk=c2.uk and c2.dictionarytype_uk in (43038266603) and c2.default_flag<>'Y'
	left join (select distinct d.mobiledevice_uk from ${environment}_DWH.MOBILEDVC2ACQPMNTTP_VHIST d where d.validto='5999-12-31' and d.effective_to='5999-12-31' and d.deleted_flag<>'Y') d1
		on a.mobiledevice_uk=d1.mobiledevice_uk    
	where a.validto='5999-12-31'
		and a.effective_to='5999-12-31'
		and a.deleted_flag<>'Y'),
t3 as (select 
	t1.client_uk,
	e.pin as client_pin,
	t1.mobiledevice_uk,
	b.ccode as mobiledevice_ccode,
	t1.liteapp_flag,
	t1.action_time,
	t1.procsrcaction_name,
	coalesce(t2.dictionary_platform_uk,b.dictionary_platform_uk) as dictionary_platform_uk,
	coalesce(t2.platform_ccode,b.dictionary_platform_ccode) as platform_ccode,
	t2.token_support, 
	t2.dictionary_appversion_uk,
	t2.appversion_description

	from  t1 
	left join  t2
		on t1.client_uk=t2.client_uk and t1.mobiledevice_uk=t2.mobiledevice_uk
	left join ${environment}_dmacrm.mobiledevice_sdim b
		on t1.mobiledevice_uk=b.uk and b.deleted_flag<>'Y'
	left join ${environment}_dwh.client_hdim e
		on t1.client_uk=e.uk and e.deleted_flag<>'Y' and e.validto='5999-12-31')

select 
	client_pin,
	liteapp_flag,
	action_time,
	token_support,
	mobiledevice_ccode,
	platform_ccode,
	appversion_description

from t3
	  
