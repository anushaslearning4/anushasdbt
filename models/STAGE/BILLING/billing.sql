{{
    config(
        materialized='incremental',
        unique_key='order_id'
    )
}}

select * from {{ ref('stg_v_billing_combined') }}