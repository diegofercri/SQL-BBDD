CREATE TABLE ALOJAMIENTO(
  NUMALOJ NUMBER(2),
  ALOJAMIENTO CHAR(15),
  NOMBRECOMPLETO CHAR(40),
  RESPONSABLE CHAR(25),
  DIRECCION CHAR(30),
  DISTANCIA NUMBER,
  CONSTRAINT PK_ALOJAMIENTO PRIMARY KEY (NUMALOJ)
);

CREATE TABLE OFICIO(
  NUMOFICIO NUMBER(2),
  OFICIO CHAR(25),
  DESCRIPCION CHAR(80),
  CONSTRAINT PK_OFICIO PRIMARY KEY (NUMOFICIO)
);

CREATE TABLE EMPLEADO(
  NUMEMP NUMBER(2),
  NOMBRE CHAR(25),
  EDAD NUMBER,
  ALOJAMIENTO NUMBER(2),
  SUELDO NUMBER(5, 2),
  CONSTRAINT PK_EMPLEADO PRIMARY KEY(NUMEMP),
  CONSTRAINT FK_EMPLEADO_ALOJAMIENTO FOREIGN KEY(ALOJAMIENTO) REFERENCES ALOJAMIENTO(NUMALOJ)
);

CREATE TABLE OFICIOEMPLEADO(
  EMPLEADO NUMBER(2),
  OFICIO NUMBER(2),
  CALIFICACION CHAR(15),
  CONSTRAINT PK_OFICIOEMPLEADO PRIMARY KEY(EMPLEADO, OFICIO),
  CONSTRAINT FK_OFICIOEMPLEADO_EMPLEADO FOREIGN KEY(EMPLEADO)REFERENCES EMPLEADO(NUMEMP),
  CONSTRAINT FK_OFICIOEMPLEADO_OFICIO FOREIGN KEY(OFICIO)REFERENCES OFICIO(NUMOFICIO)
);

CREATE TABLE TRABAJADOR(
  COD_EMP NUMBER(4),
  NOMBRE VARCHAR2(15),
  COD_JEFE NUMBER(4),
  CONSTRAINT PK_TRABAJADOR PRIMARY KEY(COD_EMP),
  CONSTRAINT FK_TRABAJADOR_TRABAJADOR_ID FOREIGN KEY(COD_JEFE) REFERENCES TRABAJADOR(COD_EMP)
);