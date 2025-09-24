{{
    config(
        schema='testing',
        store_failures=true
    )
}}

with order as (
    select * from {{ref('stg_order')}}
)

select orderkey,sum(total_price) as order_total 
from order 
group by 1
having (order_total<=1000)