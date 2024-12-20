create database work;
use work;
create table employees(employee_id int,department_id int, department_name varchar(20),salary float);
select department_id,count(salary) from employees group by 
department_id;
drop table employees;
create table employees(emp_no int,birth_date int,first_name varchar(20),
last_name varchar(20),gender varchar (10), hiredate int,age int);
select avg(age),gender from employees group by gender having 
count(emp_no)>5;
drop table employees;
create table employees(emp_no int,salary int,from_date int,
to_date int);
select emp_no from employees where 
from_date>=current_date-interval 30 day;
create table sales(sales_id int,sales_date int,amount int);
select year(sales_date),sum(amount) from sales group by 
year(sales_date);
drop table employees;
create table employees(employee_id int,department_id int,salary int);
select max(salary),department_id from employees group by 
department_id;