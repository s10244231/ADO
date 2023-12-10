
    
    

select
    orderid as unique_field,
    count(*) as n_records

from RAW.PRICESMART.ORDERS
where orderid is not null
group by orderid
having count(*) > 1


