DROP TABLE EMP;
DROP TABLE DEPARTMENT;

CREATE TABLE DEPARTMENT (ID INTEGER  NOT NULL, NAME VARCHAR(255), PRIMARY KEY (ID));
CREATE TABLE EMP (ID INTEGER  NOT NULL, NAME VARCHAR(255), SALARY BIGINT, VERSION INTEGER,
                  DEPARTMENT_ID INTEGER, PRIMARY KEY (ID),
                  CONSTRAINT DEPARTMENT_FK FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT (ID));


INSERT INTO DEPARTMENT (ID, NAME) VALUES (1, 'Engineering');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (2, 'QA');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (3, 'Accounting');

INSERT INTO EMP (ID, VERSION, NAME, SALARY, DEPARTMENT_ID) VALUES (2, 1, 'Joan', 59000, 1);
INSERT INTO EMP (ID, VERSION, NAME, SALARY, DEPARTMENT_ID) VALUES (1, 1, 'Sarah', 52000, 2);
INSERT INTO EMP (ID, VERSION, NAME, SALARY, DEPARTMENT_ID) VALUES (3, 1, 'John', 55000, 2);
INSERT INTO EMP (ID, VERSION, NAME, SALARY, DEPARTMENT_ID) VALUES (4, 1, 'Rob', 53000, 2);
