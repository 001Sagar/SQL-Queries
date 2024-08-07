create database firm;

use firm;

create table worker (
id int not null primary key auto_increment,
name varchar(40) not null,
salary int not null ,
departmant varchar(40) not null,
date datetime not null
);


INSERT INTO worker (name , salary ,date, departmant) values 
("A" , 1000, current_date(), "Tech"),
("B", 2000, current_date(), "Tech"),
("C" , 3000 , current_date(), "Tech"),
("D", 40000, current_date(), "Hr"),
("E", 50000, current_date(), "Hr"),
("F", 60000, current_date(), "Product"),
("G", 70000, current_date(),  "Product"),
("H", 80000, current_date(), "Operation"),
("I", 90000, current_date(), "Operation");


select * from worker;

-- only get the one field which is name
select name  from worker;

-- Put the if condition to check 
select * from worker where name = "A";

-- use Between 
select * from worker where salary between 1000 and 3000; 
-- In the Above Query 1000 and 3000 is inclusive 


-- use in operator
select * from worker where  name in("A", "B");

-- Use of AND , OR and NOT Operator
select * from worker where name  = "A" and salary < 20000;
select * from worker where name = "A" or salary = 70000;
select * from worker where not name in ("A", "B","C", "D");

-- sort the data in increasing order
select * from worker order by salary;

-- sort the data in decreasing order 
select * from worker order by salary desc;

-- got the distince values 
select distinct departmant from worker;

-- get the count of Employees user wise
select departmant , count(*) from worker group by departmant;

-- get the sum of salary per department
select departmant , sum(salary) from worker group by departmant;

-- get the average of salary per department
select departmant , avg(salary) from worker group by departmant;

-- get minimum salary per department
select departmant , min(salary) from worker group by departmant;

-- get the maximum salary per department
select departmant , max(salary) from worker group by departmant;

-- Having is used as Keyword where in the group by Statament
select departmant , count(*) from worker group by departmant having count(*) > 2; 
select departmant , sum(salary) from worker group by departmant having sum(salary) > 30000;
select departmant , avg(salary) from worker group by departmant having avg(salary) > 45000;


