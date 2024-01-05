
  
    

        create or replace transient table raw.pricesmart.raw_customers
         as
        (

Select *
From 
RAW.PRICESMART.CUSTOMERS
        );
      
  