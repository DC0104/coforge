{{ config(materialized='table') }}

with nation as (
select
    N_NATIONKEY as nationkey,
    N_NAME as name,
    N_REGIONKEY as regionkey,
    N_COMMENT as comment
from SOURCEDB.MK_MALL.NATIONS
)

select * from nation