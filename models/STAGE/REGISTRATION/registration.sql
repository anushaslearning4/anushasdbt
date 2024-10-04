{{
    config(
        materialized='incremental',
        unique_key='serial_number'
    )
}}

select * from {{ ref('stg_v_registration_combined') }}