
  
    

        create or replace transient table raw.pricesmart.raw_product
         as
        (

Select *
From 
RAW.PRICESMART.PRODUCT
        );
      
  