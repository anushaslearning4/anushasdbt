select * from {{ ref('stg_v_billing_la') }}
union all
select * from {{ ref('stg_v_billing_na') }}