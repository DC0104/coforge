{{
    config(
        schema='testing',
        store_failures=true
    )
}}

with orderd as (
    select * from {{ref('stg_order')}}
)

select orderkey,sum(total_price) order_total 
from orderd
group by 1
having (order_total<=800)