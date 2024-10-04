select 'LA' as Country, * from  {{ source('crd', 'RAW_TECHSUPPORT_LA') }}
where filename in 
(
select distinct METADATA$FILENAME from @RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/techsupport/techsupport_la
)