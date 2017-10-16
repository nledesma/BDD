CREATE TABLE clientes(
   cod_cliente INTEGER  NOT NULL PRIMARY KEY 
  ,nombre      VARCHAR(16) NOT NULL
  ,tipo_cliente INT  NOT NULL
);
INSERT INTO clientes(cod_cliente,nombre,tipo_cliente) VALUES (5000,'Leo Talley',2);
INSERT INTO clientes(cod_cliente,nombre,tipo_cliente) VALUES (2000,'Quinn Valencia',2);
INSERT INTO clientes(cod_cliente,nombre,tipo_cliente) VALUES (1000,'Fritz England',2);
INSERT INTO clientes(cod_cliente,nombre,tipo_cliente) VALUES (3000,'John Smith',1);
INSERT INTO clientes(cod_cliente,nombre,tipo_cliente) VALUES (4000,'Timothy Caldwell',2);

CREATE TABLE productos(
   nro_prod INTEGER  NOT NULL PRIMARY KEY 
  ,descripcion VARCHAR(29) NOT NULL
  ,unidad_medida varchar(10) NOT NULL
  ,precio VARCHAR(45)
);
INSERT INTO productos(nro_prod,descripcion,unidad_medida,precio) VALUES (37,'resaltador','m','40');
INSERT INTO productos(nro_prod,descripcion,unidad_medida,precio) VALUES (23,'pluma','mm','30');
INSERT INTO productos(nro_prod,descripcion,unidad_medida,precio) VALUES (29,'lapiz','m','30');
INSERT INTO productos(nro_prod,descripcion,unidad_medida,precio) VALUES (1,'goma','m','20');
INSERT INTO productos(nro_prod,descripcion,unidad_medida,precio) VALUES (17,'voligoma','m','20');
INSERT INTO productos(nro_prod,descripcion,unidad_medida,precio) VALUES (5,'tijera','m','30');

CREATE TABLE envios(
   cod_envio INTEGER  NOT NULL PRIMARY KEY 
  ,cod_cliente INTEGER  NOT NULL
  ,direccion VARCHAR(20)  NOT NULL
  ,ciudad   VARCHAR(8) NOT NULL
  ,provincia VARCHAR(1) NOT NULL
);
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (5,1000,'b 200','parana','C');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (38,1000,'e 500','parana','E');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (16,5000,'d 400','bs as','C');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (12,1000,'a 100','bs as','C');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (37,5000,'b 200','santa fe','B');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (5,1000,'e 500','rosario','A');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (6,4000,'b 200','ushuaia','E');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (23,5000,'a 100','bs as','D');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (35,2000,'b 200','parana','E');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (25,3000,'d 400','rosario','A');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (14,4000,'e 500','parana','C');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (48,4000,'d 400','bs as','A');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (10,1000,'a 100','santa fe','B');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (49,5000,'e 500','rosario','C');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (39,5000,'d 400','rosario','C');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (7,1000,'a 100','bs as','E');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (46,1000,'d 400','parana','A');
INSERT INTO envios(cod_envio,cod_cliente,direccion,ciudad,provincia) VALUES (44,5000,'a 100','rosario','B');

CREATE TABLE detalles_envios(
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY 
  ,cod_envio INTEGER  NOT NULL 
  ,nro_prod INTEGER  NOT NULL
  ,cantidad_enviada INTEGER  NOT NULL
);

INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (27,37,11);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (5,37,12);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (5,23,12);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (38,23,13);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (38,29,13);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (16,29,14);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (16,1,14);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (12,1,15);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (12,17,15);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (37,17,16);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (6,71,17);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (23,37,18);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (35,23,19);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (25,29,20);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (14,1,21);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (48,17,22);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (37,5,23);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (10,5,24);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (49,5,25);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (39,37,26);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (6,37,27);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (7,5,28);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (46,5,29);
INSERT INTO detalles_envios(cod_envio,nro_prod,cantidad_enviada) VALUES (44,5,30);