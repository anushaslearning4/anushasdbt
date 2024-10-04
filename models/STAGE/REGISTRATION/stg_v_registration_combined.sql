select * from {{ ref('stg_v_registration_la') }}
union all 
select * from {{ ref('stg_v_registration_na') }}