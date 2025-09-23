with region as (
select
    R_REGIONKEY as regionkey,
    R_NAME as name,
    R_COMMENT as comment
from {{ source('src','regions') }}
)

select * from region