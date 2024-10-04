select 'NA' as Country, * from  {{ source('crd', 'RAW_REVIEW_NA') }}
where filename in 
(
select distinct METADATA$FILENAME from @RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/reviews/reviews_na
)