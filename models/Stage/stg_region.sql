{{ config(materialized='table') }}

with region as (
select
    R_REGIONKEY as regionkey,
    R_NAME as name,
    R_COMMENT as comment
from SOURCEDB.MK_MALL.REGIONSS
)

select * from region