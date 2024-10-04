select * from {{ ref('stg_v_techsupport_la') }}
union all
select * from {{ ref('stg_v_techsupport_na') }}