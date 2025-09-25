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
)

select * from supplier