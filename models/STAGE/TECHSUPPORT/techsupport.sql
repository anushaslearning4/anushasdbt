{{
    config(
        materialized='incremental',
        unique_key='incident_id'
    )
}}

select * from {{ ref('stg_techsupport_combined') }}