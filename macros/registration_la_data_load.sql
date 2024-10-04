{% macro registration_la_data_load() %}

{% set copycomm %}

copy into RAW_CRD_DATABASE.RAW_CRD_SCHEMA.RAW_REGISTRATION_LA
from 
(
select $1,$2,$3,$4,$5,$6, $7, $8, $9, $10,
to_date(left(right(METADATA$FILENAME, 12),8),'yyyymmdd'),
METADATA$FILENAME,
TO_TIMESTAMP_NTZ(current_timestamp)
from
@RAW_CRD_DATABASE.RAW_CRD_SCHEMA.ext_stage/registration/registration_la)
FILE_FORMAT = (FORMAT_NAME = 'RAW_CRD_DATABASE.RAW_CRD_SCHEMA.CSV_FORMAT')

{%endset%}

{%do run_query(copycomm) %}

{% endmacro %}