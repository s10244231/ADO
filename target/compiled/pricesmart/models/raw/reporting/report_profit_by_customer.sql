select
    customerid,
    productname,
    category,
    subcategory,
    sum(orderprofit) as profit
from raw.pricesmart.stg_orders
group by
    customerid,
    productname,
    category,
    subcategory