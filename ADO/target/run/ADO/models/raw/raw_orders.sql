
  
    

        create or replace transient table raw.pricesmart.raw_orders
         as
        (

Select *
From 
RAW.PRICESMART.ORDERS
        );
      
  