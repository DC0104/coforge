with customer as (
select
    c_name as name,
    c_address as address,
    c_phone as phone_number,
    c_acctbal as account_balance,
    c_mktsegment as market_segment,
    c_comment as c_comment
from SOURCEDB.MK_MALL.CUSTOMERS
)

select * from customer