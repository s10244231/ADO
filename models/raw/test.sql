-- -- Identify what is causing the error, "Unknown" was found
-- SELECT *
-- FROM orders
-- WHERE shipmode NOT IN ('First Class', 'Same Day', 'Second Class', 'Standard Class');
-- -- Replace the "Unknown" with "Standard Class"
-- UPDATE orders
-- SET shipmode = 'Standard Class'
-- WHERE shipmode NOT IN ('First Class', 'Same Day', 'Second Class', 'Standard Class');


-- -- Identify duplicated orderid
-- SELECT orderid, COUNT(*)
-- FROM orders
-- GROUP BY orderid
-- HAVING COUNT(*) > 1;

-- -- Identify if there is any missing unique orderid becauses orderid is an unique identifier, normally they will be in sequence
-- SELECT MIN(t1.orderid) + 1 AS first_missing_orderid
-- FROM orders t1
-- WHERE NOT EXISTS (
--  SELECT 1
--  FROM orders t2
--  WHERE t2.orderid = t1.orderid + 1
-- )
-- AND t1.orderid < (
--  SELECT MAX(orderid)
--  FROM orders
-- );
-- -- Investigate characteristic of the two rows with orderid 1418
-- SELECT *
-- FROM orders
-- WHERE orderid = 1418;

-- -- Update one of the row of orderid 1418 to 1419
-- update orders set orderid = 1419 where orderid = 1418 and ordercostprice = 106;

SELECT *
FROM orders
WHERE ordersellingprice < 0;

UPDATE orders
SET ordersellingprice = ABS(ordersellingprice)
WHERE ordersellingprice < 0;
