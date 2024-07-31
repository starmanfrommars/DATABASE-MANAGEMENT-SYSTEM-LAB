# DATABASE MANAGEMENT SYSTEM
- Course Code : BCS403
- Credits : 4

## Course objectives:
- To Provide a strong foundation in database concepts, technology, and practice.
- To Practice SQL programming through a variety of database problems.
- To Understand the relational database design principles.
- To Demonstrate the use of concurrency and transactions in database.
- To Design and build database applications for real world problems.
- To become familiar with database storage structures and access techniques.

## Lab Experiments

1. Create a table called Employee & execute the following.
Employee(EMPNO,ENAME,JOB, MANAGER_NO, SAL, COMMISSION)
- Create a user and grant all permissions to theuser.
- Insert the any three records in the employee table contains attributes
EMPNO,ENAME JOB, MANAGER_NO, SAL, COMMISSION and use rollback.
Check the result.
- Add primary key constraint and not null constraint to the employee table.
- Insert null values to the employee table and verify the result.

2. Create a table called Employee that contain attributes EMPNO,ENAME,JOB, MGR,SAL &
execute the following.
- Add a column commission with domain to the Employeetable.
- Insert any five records into the table.
- Update the column details of job
- Rename the column of Employ table using alter command.
- Delete the employee whose Empno is 105.

3. Queries using aggregate functions(COUNT,AVG,MIN,MAX,SUM),Group by,Orderby.
Employee(E_id, E_name, Age, Salary)
- Create Employee table containing all Records E_id, _name, Age, Salary.
- Count number of employee names from employeetable
- Find the Maximum age from employee table.
- Find the Minimum age from employeetable.
- Find salaries of employee in Ascending Order.
- Find grouped salaries of employees.

4. Create a row level trigger for the customers table that would fire for INSERT or UPDATE or DELETE operations performed on the CUSTOMERS table. This trigger will display the salary difference between the old & new Salary.
CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)

5. Create cursor for Employee table & extract the values from the table. Declare the variables
,Open the cursor & extrct the values from the cursor. Close the cursor.
Employee(E_id, E_name, Age, Salary)

6. Write a PL/SQL block of code using parameterized Cursor, that will merge the data available in the newly created table N_RollCall with the data available in the table O_RollCall. If the data in the first table already exist in the second table then that data should be skipped.
