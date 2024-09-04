-- Create the database
CREATE DATABASE ecommerce_store;

-- Switch to the database
USE ecommerce_store;

-- Create the table for products
CREATE TABLE products (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  price DECIMAL(10, 2),
  category VARCHAR(50),
  in_stock BOOLEAN
);
-- Insert values into the table
INSERT INTO products (id, name, price, category, in_stock)
VALUES (1, 'iPhone 12', 999.99, 'Electronics', TRUE),
       (2, 'Samsung Galaxy S21', 899.99, 'Electronics', TRUE),
       (3, 'Laptop', 799.99, 'Electronics', FALSE),
       (4, 'T-shirt', 19.99, 'Clothing', TRUE),
       (5, 'Shoes', 49.99, 'Footwear', TRUE);

-- Retrieve all rows from the table
SELECT * FROM products;

-- Find products that are in stock and belong to a specific category
SELECT * FROM products WHERE in_stock = TRUE AND category = 'Electronics';

-- Find products that are either in stock or have a specific price
SELECT * FROM products WHERE in_stock = TRUE OR price <= 100.00;

-- Find products that are not in stock
SELECT * FROM products WHERE in_stock = FALSE;

