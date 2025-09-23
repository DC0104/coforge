with supplier as (
select
    s_suppkey as s_suppkey,
    s_name as name,
    s_address as address,
    s_nationkey as nationkey,
    s_phone as phone,
    s_acctbal as acctbal,
    s_comment as comment,
    updated_time
from {{ source('src','suppliers') }}
)

select * from supplier