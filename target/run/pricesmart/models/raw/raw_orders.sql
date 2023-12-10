
  
    

        create or replace transient table raw.pricesmart.raw_orders
         as
        (

select *
from RAW.PRICESMART.ORDERS
        );
      
  