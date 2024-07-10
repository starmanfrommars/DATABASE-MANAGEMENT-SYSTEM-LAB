-- Queries using aggregate functions(COUNT,AVG,MIN,MAX,SUM),Group by,Orderby.
-- Employee(E_id, E_name, Age, Salary)

CREATE TABLE Employee2(
    E_ID number(10) primary key,
    E_Name varchar(20) not null,
    Age number(5),
    Salary number(10)
);

-- 1. Create Employee table containing all Records E_id, E_name, Age, Salary.
INSERT INTO Employee2 VALUES(501,'Ravi',24,40000);
INSERT INTO Employee2 VALUES(502,'Kumar',25,85000);
INSERT INTO Employee2 VALUES(503,'Ashish',24,40000);
INSERT INTO Employee2 VALUES(504,'Sonam',26,80000);
INSERT INTO Employee2 VALUES(505,'Mona',30,100000);
INSERT INTO Employee2 VALUES(506,'Suraj',24,38000);
INSERT INTO Employee2 VALUES(507,'Deekshith',27,80000);
INSERT INTO Employee2 VALUES(508,'Sunil',32,120000);

-- 2. Count number of employee names from employeetable
SELECT COUNT(E_NAME) AS E_NAME_COUNT FROM Employee2;

-- 3. Find the Maximum age from employee table.
SELECT MAX(AGE) AS MAX_AGE FROM Employee2;

-- 4. Find the Minimum age from employeetable.
SELECT MIN(AGE) AS MIN_AGE FROM Employee2;

-- 5. Find salaries of employee in Ascending Order.
SELECT * FROM Employee2 ORDER BY SALARY ASC; -- ASC\DESC

-- 6. Find grouped salaries of employees. 
SELECT Salary, COUNT(*) As Employee_Count FROM Employee2 GROUP BY Salary;
