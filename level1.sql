use employee;
-- Question-1( Write a query to display the second highest salary in the Employee table)
-- select max(salary) from employee where salary < ( select max(salary) from employee);

-- select salary from (select salary,dense_rank() over (order by salary desc) as ranks
-- from  employee) as ranksTable  where ranks = 2;

-- select salary from employee order by salary desc limit 1 offset 2;

-- Question-2( Find employees who don’t have a manager (manager_id IS NULL).)
-- select emp_id as EmployeeId,emp_name as EmployeeName from employee
-- where manager_id is null;

-- Question-3( List departments that have more than 3 employees.)
-- select d.dept_name from employee as e
-- join department as d 
-- on e.dept_id = d.dept_id
-- group by d.dept_id
-- having count(emp_id) >= 3; 

-- Question-4( Display the highest paid employee in each department.)
-- select max(e.salary) as salary,d.dept_name from 
-- employee as e join department as d
-- on e.dept_id = d.dept_id
-- group by d.dept_id; 

-- Question-5 (Find all employees who joined in the last 2 years.)
-- select emp_id as EmployeeId,emp_name as EmployeeName
-- from employee
-- where hire_date >= date_sub(current_date(), interval 2 year);

-- Question-6(Retrieve employees who are working on more than 2 projects.)
-- select e.emp_id as EmployeeId,e.emp_name as EmployeeName
-- from
-- employee as e join workson as w
-- on
-- w.emp_id = e.emp_id
-- group by e.emp_id
-- having count(proj_id) >= 2;  

-- Question-7( Display employees whose salary is greater than the average salary of their department)
-- select emp_id as EmployeeId,emp_name as EmployeeName
-- from
-- employee e
-- where salary >= (select avg(salary) from employee where e.dept_id = dept_id);
 