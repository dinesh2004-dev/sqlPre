use ecommerce;
-- create table Customers(
--     cust_id INT PRIMARY KEY,
--     cust_name VARCHAR(50),
--     email VARCHAR(100),
--     join_date DATE,
--     city VARCHAR(50)
-- );

-- create table Products(
--     prod_id INT PRIMARY KEY,
--     prod_name VARCHAR(100),
--     category VARCHAR(50),
--     price DECIMAL(10,2)
-- );

-- create table Orders(
--     order_id INT PRIMARY KEY,
--     cust_id INT,
--     order_date DATE,
--     total_amount DECIMAL(10,2),
--     FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
-- );

-- create table OrderItems(
--     order_item_id INT PRIMARY KEY,
--     order_id INT,
--     prod_id INT,
--     quantity INT,
--     FOREIGN KEY (order_id) REFERENCES Orders(order_id),
--     FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
-- );

-- create table Reviews(
--     review_id INT PRIMARY KEY,
--     cust_id INT,
--     prod_id INT,
--     rating INT CHECK (rating BETWEEN 1 AND 5),
--     review_date DATE,
--     FOREIGN KEY (cust_id) REFERENCES Customers(cust_id),
--     FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
-- );
