--Tasks

-- 1. Get all customers and their addresses.
 select * from customers
    join
addresses on addresses.id =customers.id;
    1	Lisa	Bonet	1	1 Main St	Detroit	MI	31111	home	1
    2	Charles	Darwin	2	555 Some Pl	Chicago	IL	60611	business	1
    3	George	Foreman	3	8900 Linova Ave	Minneapolis	MN	55444	home	2
    4	Lucy	Liu	4	PO Box 999	Minneapolis	MN	55334	business	3
-- 2. Get all orders and their line items (orders, quantity and product).
    select orders.id ,orders.order_date, line_items.quantity, products.description 
    FROM orders
    join line_items on orders.id = line_items.order_id
    JOIN products on line_items.product_id = products.id;

-- 3. Which warehouses have cheetos?
    delta

-- 4. Which warehouses have diet pepsi?
    diet pepsi	alpha
    diet pepsi	delta
    diet pepsi	gamma

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
    select count(*), CONCAT(customers.first_name, customers.last_name) as customers_order
    from customers
    join addresses on customers.id = addresses.customer_id
    join orders on orders.address_id = addresses.id
    group by customers_order;


-- 6. How many customers do we have?
    select count(*)
    from customers;
    4

-- 7. How many products do we carry?
    select count(*)
    from products;
    7

-- 8. What is the total available on-hand quantity of diet pepsi?
    select warehouse_product.on_hand
    from warehouse_product
    join products on products.id = warehouse_product.product_id
    where products.description = 'diet pepsi';
    92 diet pepsi
--Stretch
-- 1. How much was the total cost for each order?

-- 2. How much has each customer spent in total?


-- 3. How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).