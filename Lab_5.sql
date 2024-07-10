-- Create cursor for Employee table & extract the values from the table. Declare the variables
-- ,Open the cursor & extrct the values from the cursor. Close the cursor.
-- Employee(E_id, E_name, Age, Salary)

CREATE TABLE EMPLOYEE5 (
    E_id NUMBER(4) PRIMARY KEY,
    E_Name VARCHAR(10) NOT NULL,
    Age NUMBER(3),
    Salary NUMBER(6)
);

INSERT INTO EMPLOYEE5 VALUES(501,'Madhu',23,25000);
INSERT INTO EMPLOYEE5 VALUES(502,'Raju',20,30000);
INSERT INTO EMPLOYEE5 VALUES(503,'Prithvi',25,19000);
INSERT INTO EMPLOYEE5 VALUES(504,'Reeta',27,32000);
INSERT INTO EMPLOYEE5 VALUES(505,'Shivani',22,26500);

SET SERVEROUTPUT ON;

DECLARE
z_empid EMPLOYEE5.E_id%TYPE;
z_empname EMPLOYEE5.E_Name%TYPE;
z_salary EMPLOYEE5.Salary%TYPE;
CURSOR Employee5_cursor IS 
SELECT E_id,E_name,Salary
FROM Employee5;
BEGIN
OPEN Employee5_cursor;
LOOP
FETCH Employee5_cursor INTO z_empid, z_empname,z_salary;
EXIT WHEN Employee5_cursor%NOTFOUND;

IF (z_salary>25000) THEN
dbms_output.Put_line(z_empid || ' ' || z_empname || ' ' || z_salary);
ELSE
dbms_output.Put_line(z_empname || ' salary is less than 25000');
END IF;
END LOOP;
CLOSE Employee5_cursor;
END;
/