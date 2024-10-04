select 'LA' as Country_txt, * from  {{ source('crd', 'RAW_BILLING_LA') }}
where filename in 
(
select distinct METADATA$FILENAME from @RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/billing/billing_la
)