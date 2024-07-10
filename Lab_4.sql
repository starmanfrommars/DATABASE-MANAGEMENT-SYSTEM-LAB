-- Create a row level trigger for the customers table that would fire for INSERT or UPDATE or
-- DELETE operations performed on the CUSTOMERS table. This trigger will display the
-- salary difference between the old & new Salary.
-- CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY)

CREATE TABLE customers(
    ID number(5) primary key, 
    NAME varchar2(10) not null,
    AGE number(3),
    ADDRESS varchar(10),
    SALARY number(10)
);

INSERT INTO customers VALUES(201,'Abhay',24,'Kaikamba',20000);
INSERT INTO customers VALUES(202,'Nidhi',22,'Mangalore',23000);
INSERT INTO customers VALUES(203,'Ravi',28,'Udupi',30000);
INSERT INTO customers VALUES(204,'Satya',20,'Vamanjoor',25000);
INSERT INTO customers VALUES(205,'Tarun',26,'BC Road',22500);

-- creating trigger
CREATE OR REPLACE TRIGGER salary_difference
AFTER DELETE OR UPDATE OR INSERT 
ON customers 
FOR EACH ROW 
WHEN(NEW.ID>0)
DECLARE 
sal_diff number(10);
BEGIN

sal_diff:= :NEW.salary - :OLD.salary;
dbms_output.put_line('Old Salary = ' || :OLD.salary);

dbms_output.put_line('Salary difference = ' || sal_diff);

dbms_output.put_line('New Salary = ' || :NEW.salary);

END; 
/

-- enable server output to be displayed
SET SERVEROUTPUT ON;

