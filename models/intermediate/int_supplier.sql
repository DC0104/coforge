{{config(materialized='incremental')}}

with supplier as(
    select
        suppkey,
        name,
        address,
        nationkey,
        phone,
        acctbal,
        comment,
        updated_time
    from {{ref('stg_supplier')}}
    where updated_time > (select max(updated_time) from {{this}} )
)

select * from supplier