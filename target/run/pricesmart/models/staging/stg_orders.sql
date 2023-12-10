
  create or replace   view raw.pricesmart.stg_orders
  
   as (
    select
--from raw_orders
orderid,
orderdate,
shipdate,
shipmode,
o.customerid,
o.productid,
ordersellingprice,
ordercostprice,
--from raw_customer
customername,
segment,
country,
--from raw_product
category,
productname,
subcategory,
ordersellingprice - ordercostprice as orderprofit
from raw.pricesmart.raw_orders as o
left join raw.pricesmart.raw_customers as c
on o.customerid = c.customerid
left join raw.pricesmart.raw_product as p
on o.productid = p.productid
  );

