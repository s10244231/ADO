
  create or replace   view raw.pricesmart.report_profit_by_customer
  
   as (
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
  );

