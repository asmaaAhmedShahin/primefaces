CREATE TABLE "DEPARTMENTS" (
    "DEPARTMENT_ID"   NUMBER(10, 0) NOT NULL ENABLE,
    "DEPARTMENT_NAME" VARCHAR2(255 CHAR)   NOT NULL ENABLE,
    PRIMARY KEY ( "DEPARTMENT_ID" )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        TABLESPACE "USERS"
    ENABLE
)

CREATE TABLE "EMPLOYEES" (
    "EMPLOYEE_ID"     NUMBER(10, 0)NOT NULL ENABLE,
    "EMPLOYEE_EMAIL"  VARCHAR2(100 CHAR) NOT NULL ENABLE,
    "EMPLOYEE_NAME"   VARCHAR2(100 CHAR),
    "EMPLOYEE_STATUS" VARCHAR2(100 CHAR) NOT NULL ENABLE,
    "GENDER"          VARCHAR2(100 CHAR) NOT NULL ENABLE,
    "DEPARTMENT_ID"   NUMBER(10, 0),
    PRIMARY KEY ( "EMPLOYEE_ID" )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        TABLESPACE "USERS"
    ENABLE,
    CONSTRAINT "UK_EMPLOYEE_EMAIL" UNIQUE ( "EMPLOYEE_EMAIL" )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        TABLESPACE "USERS"
    ENABLE,
    CONSTRAINT "FK_DEPARTMENT_ID" FOREIGN KEY ( "DEPARTMENT_ID" )
        REFERENCES "HIBERNATE"."DEPARTMENTS" ( "DEPARTMENT_ID" )
    ENABLE
)
  /* -----------------------------------------------------------------*/

SET DEFINE OFF;
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (106,'MOHAMED DEPART');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (107,'MOHAMED DEPART');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (108,'Test Data');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (109,'skjdfksjdfhjkds Data2');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (10,'Administration');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (20,'Marketing');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (30,'Purchasing');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (40,'Human Resources');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (50,'Shipping');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (60,'IT');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (70,'Public Relations');
Insert into HIBERNATE.DEPARTMENTS (DEPARTMENT_ID,DEPARTMENT_NAME) values (80,'Sales');
COMMIT;