{% macro billing_la_data_load() %}

{% set copycomm %}

copy into RAW_CRD_DATABASE.RAW_CRD_SCHEMA.RAW_BILLING_LA
from 
(select $1,$2,$3,$4,$5, $6,$7,
to_date(left(right(METADATA$FILENAME, 12),8),'yyyymmdd'),
METADATA$FILENAME,
TO_TIMESTAMP_NTZ(current_timestamp)
from
@RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/billing/billing_la)
FILE_FORMAT = (FORMAT_NAME = 'RAW_CRD_DATABASE.RAW_CRD_SCHEMA.CSV_FORMAT')

{%endset%}

{%do run_query(copycomm) %}

{% endmacro %}