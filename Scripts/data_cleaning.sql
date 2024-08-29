-- Script: data_cleaning.sql
-- Description: SQL script to clean and transform eCommerce sales data.

-- 1. Remove records with missing values (NULLs)
DELETE FROM orders
WHERE order_id IS NULL 
   OR order_date IS NULL 
   OR customer_id IS NULL 
   OR state IS NULL 
   OR sales IS NULL;

DELETE FROM order_details
WHERE order_id IS NULL 
   OR product_id IS NULL 
   OR quantity IS NULL 
   OR price IS NULL;

-- 2. Change the datatype of the date field

ALTER TABLE orders
ALTER COLUMN order_date DATE;

-- 3. Add a new column for Average Order Value (AOV)

ALTER TABLE orders
ADD COLUMN AOV DECIMAL(10, 2);

-- 4. Update the AOV column with calculated values
UPDATE orders o
SET AOV = (
    SELECT SUM(od.price * od.quantity) / SUM(od.quantity)
    FROM order_details od
    WHERE o.order_id = od.order_id
);

-- 5. Add any necessary indexes for improved query performance

CREATE INDEX idx_order_date ON orders(order_date);
CREATE INDEX idx_state ON orders(state);
CREATE INDEX idx_customer_id ON orders(customer_id);
