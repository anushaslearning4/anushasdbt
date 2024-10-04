select * from {{ ref('stg_v_reviews_la') }}
union all
select * from {{ ref('stg_v_reviews_na') }}