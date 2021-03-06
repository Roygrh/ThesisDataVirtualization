﻿--
-- Script was generated by Devart dbForge Studio for Oracle, Version 3.6.389.0
-- Product home page: http://www.devart.com/dbforge/oracle/studio
-- Script date 22/07/2016 03:04:53 p.m.
-- Server version: Oracle Database 10g Release 10.2.0.5.0 - 64bit Production With the Real Application Clusters option
-- Client version: 11.2.0.1
--


CONNECT SOP/AfP1374$fg@SERPOST;


-- 
-- Set default schema
--
ALTER SESSION SET CURRENT_SCHEMA = "SOP";

SET SQLBLANKLINES ON;
SET DEFINE OFF;
ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/SYYYY HH24:MI:SS';
ALTER SESSION SET NLS_TIMESTAMP_TZ_FORMAT = 'MM/DD/SYYYY HH24:MI:SS.FF TZH:TZM';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'MM/DD/SYYYY HH24:MI:SS.FF';
ALTER SESSION SET NLS_NUMERIC_CHARACTERS = '.,';
ALTER SESSION SET NLS_NCHAR_CONV_EXCP = FALSE;
ALTER SESSION SET TIME_ZONE = '-05:00';

--
-- Definition for table SOPGRUPO
--
CREATE TABLE SOPGRUPO (
  CAGRUPCODIGO CHAR(2 BYTE) NOT NULL,
  CAGRUPNOMBRE VARCHAR2(100 BYTE) NOT NULL,
  CAGRUPACTIVO CHAR(1 BYTE) DEFAULT (' '),
  CONSTRAINT PK_SOPGRUPO_CAGRUPCODIGO PRIMARY KEY (CAGRUPCODIGO))
TABLESPACE SOP_DATA
STORAGE (
  INITIAL 64K
  NEXT 1M
  MAXEXTENTS UNLIMITED
)
LOGGING;

-- 
-- Dumping data for table SOPGRUPO
--
INSERT INTO SOPGRUPO VALUES
('A ', 'LOS OLIVOS', '1');
INSERT INTO SOPGRUPO VALUES
('B ', 'LINCE', '1');
INSERT INTO SOPGRUPO VALUES
('C ', 'DISTRIBUCION', '1');
INSERT INTO SOPGRUPO VALUES
('D ', 'DISTRIBUCION-CCPL', '1');
INSERT INTO SOPGRUPO VALUES
('E ', 'ESTAFETA', '1');
INSERT INTO SOPGRUPO VALUES
('I ', 'LIMA', '1');
INSERT INTO SOPGRUPO VALUES
('L ', 'TADS EXPRESS', '1');
INSERT INTO SOPGRUPO VALUES
('M ', 'MIRAFLORES', '1');
INSERT INTO SOPGRUPO VALUES
('O ', 'OFICIAL', '1');
INSERT INTO SOPGRUPO VALUES
('P ', 'PROVINCIA', '1');
INSERT INTO SOPGRUPO VALUES
('S ', 'SALIDA', '1');
INSERT INTO SOPGRUPO VALUES
('T ', 'APARTADOS', '1');
INSERT INTO SOPGRUPO VALUES
('U ', 'SURCO', '1');
INSERT INTO SOPGRUPO VALUES
('G ', 'DIST DIRECTA NO AFORABLE', '1');
INSERT INTO SOPGRUPO VALUES
('F ', 'AFORABLE', '1');
INSERT INTO SOPGRUPO VALUES
('R ', 'PROV TRANSITO', '1');
INSERT INTO SOPGRUPO VALUES
('Y ', 'MAL ENCAMINADO', '1');

COMMIT;

-- 
-- Set default schema
--
DECLARE
  p VARCHAR2(255);
BEGIN 
  SELECT USER INTO p FROM DUAL;
  EXECUTE IMMEDIATE 'ALTER SESSION SET CURRENT_SCHEMA = ' || p;
END;
/