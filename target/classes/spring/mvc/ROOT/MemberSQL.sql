DROP TABLE T_MEMBER PURGE;

CREATE TABLE  "T_MEMBER" 
   (   "ID" VARCHAR2(100) NOT NULL ENABLE, 
   "PW" VARCHAR2(100) NOT NULL ENABLE, 
   "ROLE" NUMBER(1) NOT NULL ENABLE,
   "NAME" VARCHAR2(100) NOT NULL ENABLE, 
   "SEX" VARCHAR2(10) NOT NULL ENABLE, 
   "BIRTHDAY" DATE NOT NULL ENABLE, 
   "EMAIL" VARCHAR2(100) NOT NULL ENABLE, 
   "ADDRESS" VARCHAR2(200) NOT NULL ENABLE, 
   "PHONE" VARCHAR2(100) NOT NULL ENABLE, 
   "ALARM" VARCHAR2(100) NOT NULL ENABLE, 
   "SAVEDATE" DATE NOT NULL ENABLE, 
   "LASTLOGIN" DATE, 
   
    CONSTRAINT "T_MEMBER_PK" PRIMARY KEY ("ID", "PHONE") ENABLE
   ) ;