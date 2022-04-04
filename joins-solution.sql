-- 1. Get all customers and their addresses.
SELECT "customers".first_name, "customers".last_name, ("addresses".street, "addresses".city, "addresses".state, "addresses".zip) AS "address" FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".customer_id
;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT "products".description, "line_items".quantity,  "orders" FROM "orders"
JOIN "line_items" on "orders".id = "line_items".order_id
JOIN "products" on "line_items".product_id = "products".id
;

-- 3. Which warehouses have cheetos?
SELECT "products".description, "warehouse".warehouse from "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".id = 5
;