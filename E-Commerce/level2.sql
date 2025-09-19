-- Question-1( List products that have been purchased by every customer)

-- select 
-- oi.prod_id as ProductID,
-- p.prod_name as ProductName
-- from orderitems as oi
-- 	join orders as o
-- on o.order_id = oi.order_id
-- 	join products as p
-- on oi.prod_id = p.prod_id
-- group by oi.prod_id,p.prod_name
-- having count(distinct o.cust_id) = (select count(*) from customers); 

-- Question-2( Find the 2nd highest spending customer in each city.)

-- select CustomerId,
-- 	   CustomerName,
--        City
-- from
-- (select
-- c.cust_id as CustomerId,
-- c.cust_name as CustomerName,
-- c.city as City,
-- sum(o.total_amount) as total_spent,
-- dense_rank() over (partition by c.city order by sum(o.total_amount) desc) as rnk
-- from customers as c
-- 	join orders as o
-- on c.cust_id = o.cust_id
-- group by c.cust_id,c.cust_name) as ranked
-- where rnk = 2; 

-- Question-3( Display products that have only received 5-star reviews.)
-- select 
-- p.prod_id as ProductId,
-- p.prod_name as ProductName
-- from products p
-- 	join reviews r
-- on r.prod_id = p.prod_id
-- group by p.prod_id
-- having min(r.rating) >= 5;

-- Question-4(Find customers who placed back-to-back orders on consecutive days)
-- select 
-- c.cust_id as CustomerId,
-- c.cust_name as CustomerName
-- from orders as o1
-- 	join orders o2
-- on o1.cust_id = o2.cust_id and datediff(o1.order_date,o2.order_date) = 1
-- 	join customers c
-- on c.cust_id = o1.cust_id; 

-- Question-5(Show the order with the highest total quantity of products.)
-- SELECT order_id, total_quantity
-- FROM (
--     SELECT order_id, SUM(quantity) AS total_quantity
--     FROM orderitems
--     GROUP BY order_id
-- ) t1
-- WHERE total_quantity = (SELECT MAX(total_qty) from (
-- 													 select sum(quantity) as total_qty
--                                                      from orderitems
--                                                      group by order_id) as t2) ; 


-- Question-6( Find customers who bought products from at least 3 different categories.)
-- select 
-- distinct c.cust_id as CustomerId,
-- c.cust_name as CustomerName
-- from customers as c
-- 	join orders o
-- on c.cust_id = o.cust_id
-- 	join orderitems as oi
-- on oi.order_id = o.order_id
-- 	join products as p
-- on oi.prod_id = p.prod_id
-- group by c.cust_id,
-- 		 c.cust_name
-- having count(distinct p.category) >= 3; 
 
 -- Question-7(Display products that were ordered but never reviewed.)
 -- select 
-- distinct p.prod_id as ProductId,
-- p.prod_name as ProductName
-- from orderitems as oi
-- 	left join products as p
-- on oi.prod_id = p.prod_id
-- 	left join reviews as r
-- on r.prod_id = p.prod_id
-- where r.review_id is null;