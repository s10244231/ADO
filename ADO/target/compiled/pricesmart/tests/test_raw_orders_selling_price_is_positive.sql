with
orders as (
    select * from raw.pricesmart.raw_orders
)

select
    orderid,
    sum(ordersellingprice) as total_sp
from orders
group by orderid
having total_sp < 0