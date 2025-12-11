-- Create Billing Database User
CREATE USER billing_user WITH PASSWORD 'billing_pass';

-- Create Billing Database
CREATE DATABASE billing OWNER billing_user;

\c billing;

-- Create a simple billing table
CREATE TABLE invoices (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total NUMERIC(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Optional sample data
INSERT INTO invoices (product_id, quantity, total)
VALUES
    (1, 2, 999.98),
    (2, 1, 19.99);
