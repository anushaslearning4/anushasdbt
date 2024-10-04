select 'NA' as Country_txt, * from  {{ source('crd', 'RAW_REGISTRATION_NA') }}
where filename in 
(
select distinct METADATA$FILENAME from @RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/registration/registration_na
)