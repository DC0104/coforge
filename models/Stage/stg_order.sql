with orderdb as (
select
    o_orderkey as orderkey,
    o_custkey as custkey,
    o_orderstatus as order_status,
    o_totalprice as total_price,
    o_orderdate as order_date,
    o_orderpriority as order_priority,
    o_clerk as clerk,
    o_shippriority as ship_priority,
    o_comment as comment
from {{ source('src','orders') }}
)

select * from orderdb