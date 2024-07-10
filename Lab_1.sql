-- Create a table called Employee & execute the following.
-- Employee(EMPNO,ENAME,JOB, MANAGER_NO, SAL, COMMISSION)
CREATE TABLE Employee(
    EMPNO number(10), 
    ENAME varchar2(20), 
    JOB varchar(20), 
    MANAGER_NO number(10), 
    SAL number(10), 
    COMMISSION number(10)
);

-- 1. Create a user and grant all permissions to theuser.
X

-- 2. Insert the any three records in the employee table contains attributes
-- EMPNO,ENAME JOB, MANAGER_NO, SAL, COMMISSION and use rollback.
-- Check the result.

INSERT INTO Employee VALUES(1001,'Shamanth','Designer',501,50000,5000);
INSERT INTO Employee VALUES(1002,'Moulya','Developer',502,40000,2000);
INSERT INTO Employee VALUES(1003,'Harshith','Tester',503,80000,10000);
COMMIT;
INSERT INTO Employee VALUES(1004,'Deepa','Trainee',504,20000,1000);
ROLLBACK; 

-- 3. Add primary key constraint and not null constraint to the employee table.
ALTER TABLE Employee MODIFY(EMPNO number(10) primary key, ENAME varchar2(20) not null);

-- 4. Insert null values to the employee table and verify the result
INSERT INTO Employee VALUES(1004,'Deepa','Traine',504,,null,1000);
