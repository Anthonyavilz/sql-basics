-- In the orders.sql file, write out the code for the following problems:

-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders ( 
  order_id SERIAL PRIMARY KEY, 
  person_id INTEGER, 
  product_name VARCHAR(200), 
  product_price NUMERIC, 
  quantity INTEGER 
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people, person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES 
(0, 'iPhone 11 Pro', 999, 1),
(1, 'iPhone 11', 699, 1),
(2, 'iPhone xR', 599, 2),
(0, 'Lightning Cable', 24.99, 3),
(1, 'MacBook Pro Charger', 45.95, 2);

-- Select all the records from the orders table.
SELECT * FROM orders

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders

-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1
