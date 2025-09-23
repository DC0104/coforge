select max(update_time)from (
        select * from {{ this }}
        where update_time > dateadd(day,-7,current_date)
        qualify count (*) over (partition by updated_time::date)>2000
          