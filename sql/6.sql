SELECT customers.full_name, orders.id as order_id, order_details.quantity as order_quantity
FROM orders
         JOIN customers ON customers.id = orders.customer_id
         JOIN order_details ON orders.id = order_details.order_id
         JOIN products ON order_details.product_id = products.id
WHERE products.name = 'S1';


SELECT customers.*, COUNT(orders.id) as num_orders
FROM customers
         JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id
HAVING num_orders > 1;
