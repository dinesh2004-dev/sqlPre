use employee;

-- Question-1( Write a query to display the 3rd highest salary without using LIMIT or TOP)
-- select salary from 
-- (select salary,dense_rank() over(order by salary desc) as ranks from employee)
-- as ranks_table where ranks_table.ranks = 3; 

-- Question-2( Find the employees who are not working on any project.)
-- select e.emp_id as EmployeeId,emp_name as EmployeeName
-- from employee e
-- left join workson w
-- on e.emp_id = w.emp_id
-- where w.proj_id is null; 

-- Question-3( Retrieve the department with the maximum total salary expenditure.)
-- select * from employee;
-- select sum(salary) as salary,dept_id from employee
-- group by dept_id 
-- order by salary desc
-- limit 1;

-- Question-4( Display employees along with their manager’s name (Self Join).)
-- select e.emp_id, e.emp_name, m.emp_name AS manager_name
-- from
-- employee e
-- left join
-- employee m
-- on
-- e.manager_id = m.emp_id;

-- Question-5( List projects that have no employees assigned.)
-- SELECT p.proj_id, p.proj_name
-- FROM Project p
-- LEFT JOIN Workson w 
--        ON p.proj_id = w.proj_id
-- WHERE w.emp_id IS NULL; 

-- Question-6(Find employees who are working on all projects of their department.)
-- select e.emp_id as EmployeeId,e.emp_name as EmployeeName
-- from employee as e
-- join workson as w
-- on e.emp_id = w.emp_id
-- join project as p
-- on p.proj_id = w.proj_id
-- where e.dept_id = p.dept_id
-- group by e.emp_id,e.emp_name,e.dept_id
-- having count(p.proj_id) = (select count(*) from project p2 where p2.dept_id = e.dept_id); 
 
 -- Question-7( Write a query to display employees who earn a salary higher than their manager.)
 -- select 
-- e1.emp_id as EmployeeId,
-- e1.emp_name as EmployeeName,
-- e1.salary   AS employee_salary,
-- e2.emp_name AS manager_name,
-- e2.salary   AS manager_salary 
-- from employee e1 
-- join employee e2
--   on e1.manager_id = e2.emp_id
-- where e1.salary > e2.salary;

-- Question-8(Get the top 2 employees by salary in each department (use ROW_NUMBER or RANK).)
-- select 
-- 	e.emp_id as EmployeeId,
--     e.emp_name as EmployeeName,
--     e.salary as salary
-- from
-- 	(select emp_id,emp_name,salary,row_number() over (partition by dept_id order by salary desc) as rn
--         from employee) as e
--  where
-- 	rn <= 2; 