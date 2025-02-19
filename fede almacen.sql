create database fede_almacen
use database 

CREATE TABLE PRODUCTOS(
    PRO_ID INT NOT NULL,
    PRO_ID NOMBRE VARCHAR (30),
    PRO_PRECIO DECIMAL (10,2),
);

ALTER TABLE PRODUCTOS(
    ADD CONSTRAINT PRIMARY KEY (PK_PRO_ID) FOREING KEY (FK_UDM_ID);
    ADD CONSTRAINT PRIMARY KEY (PK_PRO_ID) FOREING KEY (FK_STO_ID);
    ADD CONSTRAINT PRIMARY KEY (PK_PRO_ID) FOREING KEY (FK_COM_ID);
);

ALTER TABLE PRODUCTOS (
    ADD COLUMN CANTIDAD DECIMAL(10,2);
);



CREATE TABLE UNIDADES_DE_MEDIDAS(
    UDM_ID INT NOT NULL,
    UDM_NOMBRE
);


CREATE TABLE STOCK(
    STO_ID INT NOT NULL,
    STO_NOMBRE VARCHAR (30)
);

CREATE TABLE COMERCIOS(
    COM_ID INT NOT NULL,
    COM_LOCALIDAD VARCHAR(50)
);



INSERT INTO PRODUCTOS (PRO_ID, NOMBRE,PRECIO, CANTIDAD) VALUES (1, "HARINA",900,10);
INSERT INTO PRODUCTOS (PRO_ID, NOMBRE,PRECIO, CANTIDAD) VALUES (2,"HUEVOS", 50); 
INSERT INTO PRODUCTOS (PRO_ID, NOMBRE,PRECIO, CANTIDAD) VALUES (3,"CACAO",1500,2000); 
INSERT INTO PRODUCTOS (PRO_ID, NOMBRE,PRECIO, CANTIDAD) VALUES (4, "PAN_RALLADO", 400,1500);
INSERT INTO PRODUCTOS (PRO_ID, NOMBRE,PRECIO, CANTIDAD) VALUES (5, "AZUCAR",800,5000);

INSERT INTO STOCK (STO_ID, NOMBRE) VALUES (1,"NO");
INSERT INTO STOCK (STO_ID, NOMBRE) VALUES(2,"SI");


INSERT INTO UNIDAD_DE_MEDIDAS (UDM_ID, NOMBRE) VALUES (1, 'GRAMO');
INSERT INTO UNIDAD_DE_MEDIDAS (UDM_ID, NOMBRE) VALUES (2, 'UNIDAD'),

INSERT INTO COMERCIOS (COM_ID, LOCALIDAD) VALUES (1, "BOLIVAR");
INSERT INTO COMERCIOS (COM_ID, LOCALIDAD) VALUES (2, "PIROVANO");
INSERT INTO COMERCIOS (COM_ID, LOCALIDAD) VALUES (3, "IBARRA");

