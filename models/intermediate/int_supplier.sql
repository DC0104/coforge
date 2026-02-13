{{config(materialized='incremental',unique_key='suppkey')}}

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
    {% if is_incremental() %}
    where updated_time > (select max(updated_time) from {{this}} )
    {% endif %}
)

select * from supplier