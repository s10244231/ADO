
  
    

        create or replace transient table raw.pricesmart.raw_product
         as
        (

select *
from RAW.PRICESMART.PRODUCT
        );
      
  