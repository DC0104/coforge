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
    where updated_time > (select updated_time from {{this}})
)

select * from supplier