{% macro reviews_na_data_load() %}

{% set copycomm %}

copy into RAW_CRD_DATABASE.RAW_CRD_SCHEMA.RAW_REVIEW_NA
from 
(
select $1,$2,$3, $4,$5,
to_date(left(right(METADATA$FILENAME, 12),8),'yyyymmdd'),
METADATA$FILENAME,
TO_TIMESTAMP_NTZ(current_timestamp)
from
@RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/reviews/reviews_na)
FILE_FORMAT = (FORMAT_NAME = 'RAW_CRD_DATABASE.RAW_CRD_SCHEMA.CSV_FORMAT')

{%endset%}

{%do run_query(copycomm) %}

{% endmacro %}