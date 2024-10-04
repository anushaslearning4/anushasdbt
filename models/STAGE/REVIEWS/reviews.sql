{{
    config(
        materialized='incremental',
        unique_key='email || product'
    )
}}

select * from {{ ref('stg_v_reviews.combined') }}