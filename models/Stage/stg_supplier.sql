with supplier as (
select
    s_suppkey as suppkey,
    s_name as name,
    s_address as address,
    s_nationkey as nationkey,
    s_phone as phone,
    {{joincols('s_suppkey','s_name')}} as key_name,
    s_acctbal as acctbal,
    {{cent_to_dollar('s_acctbal')}} as acct_bal,
    s_comment as comment,
    updated_time,
    '{{mactest()}}' as test
from {{ source('src','suppliers') }}
)

select * from supplier