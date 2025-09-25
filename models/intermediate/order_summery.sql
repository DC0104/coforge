with orders as (
    select * from {{source('src','orders')}}
)
final as (
    select 
    o_orderstatus order_status,
    sum(case when priority_core='1-URGENT' then total_price else 0 end)
        as URGENT,
    sum(case when priority_core='2-HIGH' then total_price else 0 end)
        as HIGH,
    sum(case when priority_core='3-MEDIUM' then total_price else 0 end)
        as MEDIUM,
    sum(case when priority_core='4-LOW' then total_price else 0 end)
        as LOW
FROM orders
group by 1
)

select * from final