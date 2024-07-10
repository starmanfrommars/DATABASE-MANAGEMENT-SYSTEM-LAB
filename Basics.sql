-- Creating a table
CREATE TABLE Employee1(
    EMPNO number(10) primary key, 
    ENAME varchar2(20) not null, 
    JOB varchar(20), 
    MGR number(10), 
    SAL number(10), 
    COMMISSION number(10)
);

DESC Employee -- Table Meta Data

-- Inserting Records
INSERT INTO Employee VALUES('EMP001','Shamanth','Designer',502,50000,5000);

INSERT INTO Employee VALUES('EMP002','Moulya','Developer',502,40000,2000);

INSERT INTO Employee VALUES('EMP003','Harshith','Tester',503,80000,10000);

SELECT * FROM Tab; -- List all tables present in DB

SELECT * FROM Employee; -- View the specified table

DROP TABLE Employee; -- Delete a table

COMMIT; -- To commit your entry

ROLLBACK; -- To revert a Commit

ALTER TABLE Employee UPDATE
ALTER TABLE Employee MODIFY(EMPNO number(10) primary key, ENAME varchar2(20) not null);
ALTER TABLE Employee DELETE


INSERT INTO Employee VALUES(101,'Abhisheek','Manager',10,25000, 70);
INSERT INTO Employee VALUES(102,'Bharath',  'Analyst',20,20000, 60);
INSERT INTO Employee VALUES(103,'Charan',   'Trainee',30,15000, 50);

DELETE Employee WHERE ENAME='Charan'; -- deleting a row

SQL> set linesize 80
SQL> set pagesize 100