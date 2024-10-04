{{
    config(
        materialized='incremental',
        unique_key='serial_number || email'
    )
}}

select * from {{ ref('stg_v_registration_combined') }}