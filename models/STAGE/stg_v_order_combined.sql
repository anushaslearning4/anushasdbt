select * from {{ ref('stg_v_order_la') }}
union all
select * from {{ ref('stg_v_order_na') }}