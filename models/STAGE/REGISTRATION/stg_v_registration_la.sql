select 'LA' as Country, * from  {{ source('crd', 'RAW_REGISTRATION_LA') }}
where filename in 
(
select distinct METADATA$FILENAME from @RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/registration/registration_la
)