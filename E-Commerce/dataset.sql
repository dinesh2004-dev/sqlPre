-- Customers
-- INSERT INTO Customers (cust_id, cust_name, email, join_date, city) VALUES
-- (1, 'Alice', 'alice@mail.com', '2022-01-10', 'New York'),
-- (2, 'Bob', 'bob@mail.com', '2022-02-15', 'Los Angeles'),
-- (3, 'Charlie', 'charlie@mail.com', '2022-03-20', 'Chicago'),
-- (4, 'Diana', 'diana@mail.com', '2022-04-25', 'New York'),
-- (5, 'Eve', 'eve@mail.com', '2022-05-30', 'Los Angeles');

-- Products
-- INSERT INTO Products (prod_id, prod_name, category, price) VALUES
-- (101, 'Laptop', 'Electronics', 1200.00),
-- (102, 'Phone', 'Electronics', 800.00),
-- (103, 'Headphones', 'Electronics', 150.00),
-- (104, 'Sofa', 'Furniture', 700.00),
-- (105, 'Chair', 'Furniture', 120.00),
-- (106, 'Table', 'Furniture', 300.00),
-- (107, 'Book', 'Books', 20.00),
-- (108, 'Novel', 'Books', 25.00),
-- (109, 'Shoes', 'Fashion', 90.00),
-- (110, 'Jacket', 'Fashion', 150.00);

-- Orders
-- INSERT INTO Orders (order_id, cust_id, order_date, total_amount) VALUES
-- (201, 1, '2023-01-05', 2000.00),
-- (202, 2, '2023-01-06', 800.00),
-- (203, 3, '2023-02-10', 870.00),
-- (204, 1, '2023-02-11', 300.00),
-- (205, 4, '2023-03-15', 1200.00),
-- (206, 5, '2023-03-16', 300.00),
-- (207, 2, '2023-04-20', 140.00),
-- (208, 3, '2023-05-25', 90.00),
-- (209, 1, '2023-05-26', 1500.00),
-- (210, 4, '2023-05-27', 820.00);

-- OrderItems
-- INSERT INTO OrderItems (order_item_id, order_id, prod_id, quantity) VALUES
-- Order 201 (Alice) - multiple items
-- (301, 201, 101, 1), -- Laptop
-- (302, 201, 102, 1), -- Phone
-- (303, 201, 103, 2), -- Headphones

-- Order 202 (Bob)
-- (304, 202, 102, 1), -- Phone

-- Order 203 (Charlie)
-- (305, 203, 104, 1), -- Sofa
-- (306, 203, 105, 1), -- Chair
-- (307, 203, 106, 1), -- Table

-- Order 204 (Alice again)
-- (308, 204, 107, 5), -- Books

-- Order 205 (Diana)
-- (309, 205, 101, 1), -- Laptop
-- (310, 205, 104, 1), -- Sofa

-- Order 206 (Eve)
-- (311, 206, 105, 2), -- Chairs

-- Order 207 (Bob)
-- (312, 207, 109, 1), -- Shoes
-- (313, 207, 110, 1), -- Jacket

-- Order 208 (Charlie)
-- (314, 208, 109, 1), -- Shoes

-- Order 209 (Alice big order)
-- (315, 209, 101, 1), -- Laptop
-- (316, 209, 108, 4), -- Novels
-- (317, 209, 110, 1), -- Jacket

-- Order 210 (Diana)
-- (318, 210, 102, 1), -- Phone
-- (319, 210, 103, 2); -- Headphones

-- -- Reviews
-- INSERT INTO Reviews (review_id, cust_id, prod_id, rating, review_date) VALUES
-- (401, 1, 101, 5, '2023-01-10'), -- Alice Laptop
-- (402, 1, 102, 4, '2023-01-11'), -- Alice Phone
-- (403, 2, 102, 5, '2023-01-12'), -- Bob Phone
-- (404, 3, 104, 3, '2023-02-12'), -- Charlie Sofa
-- (405, 3, 105, 4, '2023-02-13'), -- Charlie Chair
-- (406, 4, 101, 5, '2023-03-16'), -- Diana Laptop
-- (407, 4, 104, 5, '2023-03-17'), -- Diana Sofa
-- (408, 5, 105, 5, '2023-03-18'), -- Eve Chair
-- (409, 5, 110, 4, '2023-03-20'), -- Eve Jacket
-- (410, 2, 110, 2, '2023-04-22'), -- Bob Jacket
-- (411, 1, 107, 5, '2023-02-15'), -- Alice Book
-- (412, 1, 108, 4, '2023-05-28'), -- Alice Novel
-- (413, 3, 109, 5, '2023-05-29'); -- Charlie Shoes
