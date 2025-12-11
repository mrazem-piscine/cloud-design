-- Create Inventory Database User
CREATE USER inventory_user WITH PASSWORD 'inventory_pass';

-- Create Inventory Database
CREATE DATABASE inventory OWNER inventory_user;

\c inventory;

-- Create a simple inventory table (you can adjust later)
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    price NUMERIC(10,2) NOT NULL DEFAULT 0
);

-- Optional sample data
INSERT INTO products (name, quantity, price)
VALUES 
    ('Laptop', 10, 499.99),
    ('Mouse', 25, 19.99),
    ('Keyboard', 15, 29.99);
