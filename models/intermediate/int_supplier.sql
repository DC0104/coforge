with supplier as(
    select
    supplier.suppkey,
    supplier.name,
    ssupplier.address,
    supplier.nationkey,
    supplier.phone,
    supplier.acctbal,
    supplier.comment,
    supplier.updated_time
    from {{ref('stg_supplier')}}
)

select * from supplier