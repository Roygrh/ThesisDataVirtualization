﻿--
-- Script was generated by Devart dbForge Studio for Oracle, Version 3.6.389.0
-- Product home page: http://www.devart.com/dbforge/oracle/studio
-- Script date 22/07/2016 02:06:17 p.m.
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
-- Definition for table STA_MODALIDAD
--
CREATE TABLE STA_MODALIDAD (
  NID_MODALIDAD NUMBER(5, 0) NOT NULL,
  CDES_MODALIDAD VARCHAR2(60 BYTE),
  CMOD_VIGENTE CHAR(1 BYTE) NOT NULL,
  CONSTRAINT PK_NID_MODALIDAD PRIMARY KEY (NID_MODALIDAD))
TABLESPACE SOP_DATA
STORAGE (
  INITIAL 64K
  NEXT 1M
  MAXEXTENTS UNLIMITED
)
LOGGING;

-- 
-- Dumping data for table STA_MODALIDAD
--
INSERT INTO STA_MODALIDAD VALUES
(1, 'EQUIPAJE NO ACOMP.', '1');
INSERT INTO STA_MODALIDAD VALUES
(2, 'EQUIPAJE RETENIDO', '1');
INSERT INTO STA_MODALIDAD VALUES
(3, 'MENAJE DE CASA', '1');
INSERT INTO STA_MODALIDAD VALUES
(4, 'MUESTRAS S.V.C.', '1');
INSERT INTO STA_MODALIDAD VALUES
(5, 'OBSEQUIOS', '1');
INSERT INTO STA_MODALIDAD VALUES
(6, 'SERVICIO POSTAL', '1');
INSERT INTO STA_MODALIDAD VALUES
(7, 'MENSAJERIA INTERNACIONAL', '1');
INSERT INTO STA_MODALIDAD VALUES
(8, 'COMERCIO FRONTERIZO', '1');
INSERT INTO STA_MODALIDAD VALUES
(9, 'RANCHO', '1');
INSERT INTO STA_MODALIDAD VALUES
(10, 'LIBERACION', '1');
INSERT INTO STA_MODALIDAD VALUES
(11, 'OTRAS MERCANCIAS HASTA $2000', '1');

--
-- Definition for trigger TR_STA_ID_MODALIDAD
--
CREATE OR REPLACE TRIGGER TR_STA_ID_MODALIDAD
BEFORE INSERT ON STA_MODALIDAD FOR EACH ROW
BEGIN

SELECT sop.SQ_STA_Modalidad.nextval
  INTO omwb_emulation.globalPkg.identity
  FROM dual;

 :new.NID_MODALIDAD :=omwb_emulation.globalPkg.identity;

END;
/

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