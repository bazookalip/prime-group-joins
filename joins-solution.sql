-- 1. Get all customers and their addresses.
SELECT "first_name", "last_name", "street", "city", "state", "zip" 
FROM "customers" 
JOIN "addresses" 
ON "addresses"."customer_id" =  "customers"."id";



-- Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items"
ON "line_items"."order_id" = "orders.id"

--Which warehouses have cheetos?
SELECT "warehouse", "description" 
FROM "warehouse_product" 
JOIN "warehouse" ON "warehouse_id"= "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"= "products"."id"
WHERE "product_id"='5';

-- Which warehouses have diet pepsi?
SELECT "warehouse", "description" 
FROM "warehouse_product" 
JOIN "warehouse" ON "warehouse_id"= "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"= "products"."id"
WHERE "product_id"='6';

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.



-- How many customers do we have?
SELECT COUNT(*) FROM "customers";


-- How many products do we carry?
SELECT COUNT(*) FROM "products"

-- What is the total available on-hand quantity of diet pepsi?

