-- Write a PL/SQL block of code using parameterized Cursor, that will merge the data available
-- in the newly created table N_RollCall with the data available in the table O_RollCall. If the
-- data in the first table already exist in the second table then that data should be skipped.
 
CREATE TABLE O_RollCall (
    USN VARCHAR(10) PRIMARY KEY,
    NAME VARCHAR(10) NOT NULL,
    AGE NUMBER(5)
);

CREATE TABLE N_RollCall (
    USN VARCHAR(10) PRIMARY KEY,
    NAME VARCHAR(10) NOT NULL,
    AGE NUMBER(5)
);

INSERT INTO O_RollCall VALUES('4xx22CS002','Neethi',19);
INSERT INTO O_RollCall VALUES('4xx22CS001','Preethi',19);
INSERT INTO O_RollCall VALUES('4xx22CS004','Shanthi',20);

INSERT INTO N_RollCall VALUES('4xx22CS005','Satya',18);
INSERT INTO N_RollCall VALUES('4xx22CS001','Preethi',19);
INSERT INTO N_RollCall VALUES('4xx22CS002','Neethi',19);
INSERT INTO N_RollCall VALUES('4xx22CS004','Shanthi',20);

SELECT * FROM O_RollCall;
SELECT * FROM N_RollCall;

-- Parameterized Cursor
DECLARE
CURSOR OCUR (roll character) IS SELECT * FROM O_RollCall WHERE usn=roll;
CURSOR ncur IS SELECT * FROM N_RollCall;

sst N_RollCall%rowtype;
ost O_RollCall%rowtype;

BEGIN
OPEN ncur;
LOOP
FETCH ncur INTO sst;
EXIT WHEN ncur%notfound;

dbms_output.put_line(sst.usn || ' ' || sst.name || ' ' || sst.age);
open ocur(sst.usn);
FETCH ocur INTO ost;
IF ocur%found=false THEN
INSERT INTO O_RollCall VALUES(sst.usn, sst.name, sst.age);
ELSE
dbms_output.put_line(ost.usn || ' ' || 'data already exists');
END IF;
CLOSE ocur;
END LOOP;
CLOSE ncur;
END;
/

-- Turn on server output 
SET SERVEROUTPUT ON;

-- Updated N_RollCall
SELECT * FROM N_RollCall;
