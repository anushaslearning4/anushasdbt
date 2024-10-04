{{
    config(
        materialized='incremental',
        unique_key='order_no'
    )
}}

select * from {{ ref('stg_v_billing_combined') }}