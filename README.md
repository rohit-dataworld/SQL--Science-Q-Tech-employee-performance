•	Generated reports on employee details, their performance, and the project that the employees have undertaken, 
to analyze the employee database and extract specific data based on different requirements.

•	Skills Demonstrated:1) Data Modeling: Created an ERD to represent employee, performance, project, and department relationships.
2) Data Manipulation: Utilized SELECT, JOIN, WHERE, GROUP BY, and ORDER BY clauses to filter, aggregate, and sort data.
3) Data Analysis: Analyzed performance metrics like ratings, project contributions, and salary to identify trends and patterns.

•	Provided data-driven insights to improve employee performance management strategies.

Requiremnts:
-- 1.Create a database named employee, then import data_science_team.csv 
proj_table.csv and emp_record_table.csv into the employee database from 
the given resources.
create database employee;
use employee;
show tables;

-- 2.Create an ER diagram for the given employee database.

-- 3.Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and 
DEPARTMENT from the employee record table, and make a list of employees 
and details of their department.

/* 4.Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, 
DEPARTMENT, and EMP_RATING if the EMP_RATING is:
less than two
greater than four
between two and four */

-- 5.Write a query to concatenate the FIRST_NAME and the LAST_NAME of 
employees in the Finance department from the employee table and then give 
the resultant column alias as NAME.

-- 6.Write a query to list only those employees who have someone reporting 
to them. Also, show the number of reporters (including the President).

-- 7.Write a query to list down all the employees from the healthcare and 
finance departments using union. Take data from the employee record table.

-- 8.Write a query to list down employee details such as EMP_ID, 
FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept. 
Also include the respective employee rating along with the max emp rating 
for the department.

-- 9.Write a query to calculate the minimum and the maximum salary of the 
employees in each role. Take data from the employee record table.

-- 10.Write a query to assign ranks to each employee based on their 
experience. Take data from the employee record table.

-- 11.Write a query to create a view that displays employees in various 
countries whose salary is more than six thousand. Take data from the 
employee record table.

-- 12.Write a nested query to find employees with experience of more than 
ten years. Take data from the employee record table.

-- 13.Write a query to create a stored procedure to retrieve the details 
of the employees whose experience is more than three years. Take data from 
the employee record table.

-- 15.Create an index to improve the cost and performance of the query to 
find the employee whose FIRST_NAME is â€˜Ericâ€™ in the employee table 
after checking the execution plan.

-- 16.Write a query to calculate the bonus for all the employees, based on 
their ratings and salaries (Use the formula: 5% of salary * employee 
rating).

-- 17.Write a query to calculate the average salary distribution based on 
the continent and country. Take data from the employee record table.




