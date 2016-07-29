CREATE TABLE SOP.STA_ORDEN (
  NID_ORDEN NUMBER(12, 0) NOT NULL,
  NID_ESTADO NUMBER(5, 0) NOT NULL,
  NID_MODALIDAD NUMBER(5, 0),
  NID_CLIENTE NUMBER(10, 0) NOT NULL,
  IDUSUARIO VARCHAR2(12 BYTE) NOT NULL,
  CANNO_ORDEN CHAR(2 BYTE) NOT NULL,
  CCOD_ADUANA CHAR(3 BYTE) NOT NULL,
  CCOD_REGIMEN CHAR(2 BYTE) NOT NULL,
  CNUM_ORDEN CHAR(6 BYTE) NOT NULL,
  CFEC_ORDEN CHAR(8 BYTE) NOT NULL,
  CNUM_DSI CHAR(6 BYTE),
  CANNO_DSI CHAR(2 BYTE),
  CFEC_NUMERA CHAR(8 BYTE),
  CFLAG_SOLIAFORO CHAR(1 BYTE),
  CFLAG_FRANQUICIA CHAR(1 BYTE),
  CFEC_REGISTRO CHAR(8 BYTE),
  CHORA_REGISTRO CHAR(4 BYTE),
  CFECHA_VENCIMIENTO CHAR(8 BYTE),
  CFECHA_PREVIO CHAR(8 BYTE),
  CHINI_PREVIO CHAR(4 BYTE),
  CHFIN_PREVIO CHAR(4 BYTE),
  CUSU_PREVIO VARCHAR2(12 BYTE),
  CCANAL_TIPO CHAR(1 BYTE),
  CFLAG_MAYOR100 CHAR(1 BYTE),
  ACRANGO_FECHA CHAR(8 BYTE),
  ACMOTIVO1 VARCHAR2(100 BYTE),
  ACMOTIVO2 VARCHAR2(100 BYTE),
  ACFLAG_INTERES CHAR(1 BYTE),
  ACFLAG_GRADUALIDAD CHAR(1 BYTE),
  ACPORCE_GRANUALIDAD VARCHAR2(10 BYTE),
  ACFECH_SANCION VARCHAR2(8 BYTE),
  ACFLAG_TIPOAUTOLI CHAR(1 BYTE),
  CTIPO_SEGURO CHAR(1 BYTE),
  NVAL_SEGURO NUMBER(10, 3),
  CORDEN_RELACION NUMBER(5, 0),
  CENVIO_RELACION CHAR(12 BYTE),
  ACODI_LEGA CHAR(3 BYTE),
  AREGI_INCEN CHAR(1 BYTE),
  ACMOTIVO3 VARCHAR2(100 BYTE),
  ACMOTIVO4 VARCHAR2(100 BYTE),
  AMONEDA CHAR(1 BYTE),
  AINCEN_PORC CHAR(1 BYTE),
  ASINDI_PAEL CHAR(1 BYTE),
  AMODALIDAD CHAR(4 BYTE),
  ALC CHAR(1 BYTE),
  AINTERES CHAR(1 BYTE),
  AMONTO NUMBER(10, 3),
  ATIPO_ORDEN CHAR(2 BYTE),
  ATOTLIQUI NUMBER(10, 0),
  ALIQOBSERV VARCHAR2(150 BYTE),
  ACONO_EMBAR CHAR(25 BYTE),
  AMOTIVOVAL VARCHAR2(20 BYTE),
  AMAUTOPREVI NUMBER(7, 2),
  CNOM_DESTINATARIO VARCHAR2(40 BYTE),
  AFECHA_EXP CHAR(8 BYTE),
  AHORA_EXP CHAR(4 BYTE),
  ANRO_EXP VARCHAR2(30 BYTE),
  AUSU_EXP VARCHAR2(12 BYTE),
  AVALMOTIVO1 CHAR(2 BYTE),
  AVALMOTIVO2 CHAR(2 BYTE),
  AFLAG_AUTO CHAR(1 BYTE),
  AFECHA_RECT CHAR(8 BYTE),
  RM_GRAD_FLAG CHAR(1 BYTE),
  RM_GRAD_PORC NUMBER(3, 0),
  RM_MOTIVO3 VARCHAR2(100 BYTE),
  RM_MOTIVO4 VARCHAR2(100 BYTE),
  RM_NID_INFRACCION_F NUMBER(3, 0),
  RM_NID_INFRACCION_I NUMBER(3, 0),
  RM_NID_INFRACCION_G NUMBER(3, 0),
  RM_INCENTIV_FLAG CHAR(1 BYTE),
  RM_INCENTIV_PORC NUMBER(3, 0),
  RM_FECSANCION CHAR(8 BYTE),
  RM_INTERES_FLAG CHAR(1 BYTE),
  CONSTRAINT PK_NID_ORDEN PRIMARY KEY (NID_ORDEN),
  CONSTRAINT FK_ORDEN_CLIENTE FOREIGN KEY (NID_CLIENTE)
    REFERENCES SOP.STA_CLIENTE(NID_CLIENTE),
  CONSTRAINT FK_ORDEN_ESTADO_ORDEN FOREIGN KEY (NID_ESTADO)
    REFERENCES SOP.STA_ESTADO_ORDEN(NID_ESTADO),
  CONSTRAINT FK_ORDEN_MODALIDAD FOREIGN KEY (NID_MODALIDAD)
    REFERENCES SOP.STA_MODALIDAD(NID_MODALIDAD),
  CONSTRAINT AK_ORDEN UNIQUE (CANNO_ORDEN, CCOD_REGIMEN, ACFLAG_TIPOAUTOLI, CNUM_ORDEN))
TABLESPACE SOP_DATA
STORAGE (
  INITIAL 64K
  NEXT 1M
  MAXEXTENTS UNLIMITED
)
LOGGING;