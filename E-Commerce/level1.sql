-- Question-1(Find the top 5 customers by total spending.)
-- select 
-- c.cust_id as CustomerId,
-- c.cust_name as CustomerName,
-- sum(o.total_amount) as total_spending
-- from orders as o
-- 	join customers as c
-- on o.cust_id = c.cust_id
-- group by o.cust_id
-- order by total_spending desc
-- limit 2 offset 1;  

-- Question-2(List products that have never been ordered.)
-- select 
-- p.prod_id as ProductId,
-- p.prod_name as ProductName
-- from products as p
-- 	left join orderitems as o
-- on p.prod_id = o.prod_id
-- where o.prod_id is null; 

-- Question-3( Find customers who have placed orders in at least 2 different months)

-- select * from orders;
-- select 
-- c.cust_id as CustomerId,
-- c.cust_name as CustomerName
-- from customers c
-- where (
-- 	select count(distinct month(order_date)) 
-- 	from orders 
-- 	where c.cust_id = cust_id) >= 2; 

-- Question-4( Show the average rating per product category.)
-- select 
-- p.category as Category,
-- round(avg(r.rating),2) as avg_rating
-- from products as p
-- 	join reviews as r
-- on p.prod_id = r.prod_id
-- group by p.category; 

-- Question-5(Retrieve orders that include more than 3 different products.)

-- select * from orderitems;
-- select 
-- order_id as OrdeId
-- from orderitems
-- group by order_id
-- having count(distinct prod_id) >= 3;  

-- Question-6(Display customers who have not placed any orders yet.)
-- select * from customers;
-- select 
-- c.cust_id as CustomerId,
-- c.cust_name as CustomerName
-- from Customers as c
-- 	left join orders as o
-- on c.cust_id = o.cust_id
-- where o.cust_id is null; 

-- Question-5 (Show the most expensive product ordered in each order.)

-- select 
-- order_id as OrderId,
-- prod_id as ProductId,
-- prod_name as ProductName,
-- price as MaxPrice
-- from (
-- 		select 
-- 			o.order_id,
--             p.prod_id,
--             p.prod_name,
--             p.price,
--             row_number() over (partition by o.order_id order by p.price desc) as rn
--             
--             from orders o
-- 				join orderitems as oi
-- 			on o.order_id = oi.order_id
-- 				join products as p
-- 			on p.prod_id = oi.prod_id
-- ) as ranks
-- where rn = 1; 