/*ScienceQtech employee performence mapping
   course end project-1 */

-- 1) create database and import tables
create database emp_scqtech
use emp_scqtech

select * from data_science_team
select * from emp_record_table
select * from proj_table

-- 2) ER diagram in jpg format

-- 3) fetch mentioned fields
select emp_id,first_name,last_name,gender,dept from emp_record_table

-- 4) fetch field based on mentioned conditions
select emp_id,first_name,last_name,gender,dept,emp_rating from emp_record_table
where emp_rating < 2

select emp_id,first_name,last_name,gender,dept,emp_rating from emp_record_table
where emp_rating between 2 and 4

select emp_id,first_name,last_name,gender,dept,emp_rating from emp_record_table
where emp_rating >4


-- 5) concat
select concat(first_name,'',last_name)as NAME from emp_record_table 
where dept='finance'

-- 6) display emp as managers and count of emp reporting to them
select m.emp_id,count(e.emp_id) as reporters from emp_record_table m
inner join 
emp_record_table e
on m.emp_id = e.manager_id
group by m.emp_id
order by reporters desc
-- mysql not accepting more than 1 field while group by function(bug),
-- output when adding emp_name,role is nonagregate fields entered with group by


-- 7) emp from mentioned dept
select emp_id,first_name from emp_record_table where dept='healthcare'
union 
select emp_id,first_name from emp_record_table where dept='finance'
order by emp_id

-- 8) max rating of every dept
select emp_id,first_name,last_name,role,dept,emp_rating,
max(emp_rating) over(partition by dept) as max_dept_rating
from emp_record_table 


-- 9) min and max salary of each dept
select distinct(role),
min(salary) over(partition by role) as min_role_salary,
max(salary) over(partition by role) as max_role_salary
from emp_record_table
order by max_role_salary desc


-- 10) assign ranking based on exp
select emp_id,first_name,exp,
rank() over(order by exp) as exp_rank
from emp_record_table

-- 11) view of emp with salary more than 6000
create view emp_view as
select emp_id,first_name,last_name,salary from emp_record_table
where salary>6000

select * from emp_view

-- 12) nested quary 
select emp_id,first_name,last_name,exp from emp_record_table
where exp in (select exp from emp_record_table where exp > 10)


-- 13) stored procedure for exp>3
delimiter $$
create procedure exp_3()

begin 

select emp_id,first_name,last_name,salary,exp from emp_record_table
where exp>3;

end;
$$

call exp_3

-- 14) stored function for exp and role
delimiter $$

create function emp_role(exp int)
returns varchar(255)
deterministic

begin

declare role varchar(255);

if exp<=2 then
set role='junior data scientist';

elseif exp between 2 and 5 then
set role='associate data scientist';

elseif exp between 5 and 10 then
set role='senior data scientist';

elseif exp between 10 and 12 then
set role='lead data scientist';

elseif exp between 12 and 16 then
set role= 'manager';

end if;

return(role);
end $$

select exp,emp_role(exp)
from data_science_team;



-- 15) create indx function
create index idx_first_name
on emp_record_table(first_name(20));
select * from emp_record_table
where first_name='eric';


-- 16) calculating bonus with given formula
select emp_id,first_name,salary,emp_rating,((0.05*salary)*emp_rating) as bonus from emp_record_table


-- 17) average salary based on country and continent

select emp_id,first_name,salary,country,continent,
avg(salary) over(partition by country) as avg_country_salalry,
avg(salary) over(partition by continent) as avg_continent_salary
from emp_record_table