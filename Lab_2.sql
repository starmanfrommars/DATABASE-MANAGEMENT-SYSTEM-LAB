-- Create a table called Employee that contain attributes EMPNO,ENAME,JOB, MGR,SAL &
-- execute the following.
CREATE TABLE Employee1(
    EMPNO number(10) primary key, 
    ENAME varchar2(20) not null, 
    JOB varchar(20), 
    MGR number(10), 
    SAL number(10)
);

-- 1> Add a column commission with domain to the Employee table.
ALTER TABLE Employee1 ADD(COMMISSION number(10));

-- 2> Insert any five records into the table.
INSERT INTO Employee1 VALUES(101,'Abhisheek','Manager',10,25000, 70);
INSERT INTO Employee1 VALUES(102,'Bharath',  'Analyst',20,20000, 60);
INSERT INTO Employee1 VALUES(103,'Charan',   'Trainee',30,15000, 50);
INSERT INTO Employee1 VALUES(104,'Mohan',  'Designer',20,45000, 40);
INSERT INTO Employee1 VALUES(105,'Riya',   'Trainee',30,10000, 10);

-- 3> Update the column details of 
UPDATE Employee1 SET JOB='Tester' WHERE EMPNO=103 ;

-- 4> Rename the column of Employee table using alter command.
ALTER TABLE Employee1 RENAME COLUMN JOB TO "Designation";

-- 5> Delete the employee whose Empno is 105
DELETE Employee1 WHERE EMPNO=105;