-- Quetion-1( Retrieve the employees who are assigned to at least one project in every department.)

-- select 
-- e.emp_id as EmployeeId,
-- e.emp_name as EmployeeName
-- from employee as e
--     join workson as w
-- on e.emp_id = w.emp_id
-- 	join project as p
-- on p.proj_id = w.proj_id
-- group by
-- e.emp_id,
-- e.emp_name
-- HAVING COUNT(DISTINCT p.dept_id) = (
--     SELECT COUNT(DISTINCT dept_id) FROM project
-- );

-- Question-2 ( Find employees who have the maximum number of projects across the whole company.) 
 -- select 
-- e.emp_id as EmployeeId,
-- e.emp_name as EmployeeName
-- from employee as e
-- 	join workson as w
-- on e.emp_id = w.emp_id
-- group by
-- e.emp_id,
-- e.emp_name
-- having count(distinct w.proj_id) = (
-- 	select max(project_cnt)
--     from ( select count(distinct proj_id) as project_cnt from workson group by emp_id) as t
-- );
-- Question-3( Write a query to display the department name, employee name, and total hours worked by
 -- employees on projects, sorted by total hours (desc).) 
 -- select 
-- e.emp_id as EmployeeId,
-- e.emp_name as EmployeeName,
-- sum(w.hours) as total_hrs
-- from employee as e
-- 	join workson as w
-- on e.emp_id = w.emp_id
-- group by e.emp_id
-- order by total_hrs desc;

-- Question-4( List employees who are not assigned to their own department’s projects.)
-- select
-- distinct e.emp_id,e.emp_name
-- from employee as e
-- 	join workson as w
-- on e.emp_id = w.emp_id
-- 	join project as p
-- on p.proj_id = w.proj_id
-- where e.dept_id != p.dept_id; 

-- Question-5( Write a query to show the cumulative salary of employees in each department ordered by
 -- hire_date (use SUM() OVER).)
 
 -- select 
-- emp_id as EmployeeId,
-- emp_name as EmployeeName,
-- sum(salary) over (order by hire_date) as cummulative_salary from employee;

 -- Question-6(Display the employees who joined before their manager.)
--  select
-- e.emp_id as EmployeeId,
-- e.emp_name as EmployeeName,
-- e.hire_date,
-- m.emp_id as ManagerId,
-- m.emp_name as ManagerName,
-- m.hire_date
-- from employee e
-- join employee m
-- 	on e.manager_id = m.emp_id
-- where m.hire_date > e.hire_date;

-- Question-7( Write a query to list the common employees working in more than one department (if possible
 -- via project association).) 
 
 -- select 
-- e.emp_id as EmployeeId,
-- e.emp_name as EmployeeName
-- from employee as e
-- 	join workson as w
-- on e.emp_id = w.emp_id
-- 	join project as p
-- on p.proj_id = w.proj_id
-- group by e.emp_id
-- having count(distinct p.dept_id) > 1;

-- Question-8 ( Find the highest paid employee per department, but exclude the overall company highest-paid
 -- employee)  
 
 -- select
-- e.emp_id as EmployeeId,
-- e.emp_name as EmployeeName,
-- e.dept_id as DepartmentId,
-- e.salary as salary
-- from employee e
-- where e.salary = (select max(salary) from employee where dept_id = e.dept_id and
-- 					salary < (select max(salary) from employee));

-- Question-9 (Write a query to list the departments where every employee earns more than 50,000.)
-- select dept_id 
-- from employee group by dept_id having min(salary) > 50000; 
-- Question-10( Find the average salary difference between employees and their managers)
-- select avg(e.salary - m.salary) as avg_salary
-- from employee e
-- 	join employee m
-- on e.manager_id = m.emp_id;
 
 -- Question-10( Find the average salary difference between employees and their managers)
 -- select avg(e.salary - m.salary) as avg_salary
-- from employee e
-- 	join employee m
-- on e.manager_id = m.emp_id;
