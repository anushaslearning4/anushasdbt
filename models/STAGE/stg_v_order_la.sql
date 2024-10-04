select 'LA' as Country, * from  {{ source('crd', 'RAW_ORDERS_LA') }}
where filename in 
(
select distinct METADATA$FILENAME from @RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/orders/orders_la
)