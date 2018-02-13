//Roles y usuario admin
INSERT INTO roles (ROL) VALUES ('ROLE_SUPER');
INSERT INTO roles (ROL) VALUES ('ROLE_ADMIN');
INSERT INTO roles (ROL) VALUES ('ROLE_MOVIL');
INSERT INTO roles (ROL) VALUES ('ROLE_WEB');
INSERT INTO roles (ROL) VALUES ('ROLE_CAMBIO_CONTRASENA');
INSERT INTO usuarios_sistema (CAMBIAR_CONTRASENA_ALLOGIN,NOMBRE_USUARIO, CUENTA_SINEXPIRAR, CUENTA_SINBLOQUEAR, DESCRIPCION, FECHA_REGISTRO, USUARIO_REGISTRO, CREDENCIAL_SINEXPIRAR, CORREO_ELECTRONICO, HABILITADO, FECHA_ULTACC, FECHA_ULTMODCRED, FECHA_ULTMOD, USUARIO_ULTMOD, CONTRASENA) VALUES ('0','admin', '1', '1', 'Administrador', '01-JAN-18', 'admin', '1', 'waviles@icsnicaragua.org', '1', '01-JAN-18', NULL, '01-JAN-18', 'admin', 'd6e82b37766bd635db7de862259d1d0734d1118a7e02690d603277188bf65781943099a58d689fc2');
INSERT INTO usuarios_roles (ROL, NOMBRE_USUARIO, ESTADO, PASIVO, FECHA_REGISTRO, USUARIO_REGISTRO) VALUES ('ROLE_SUPER', 'admin', '0', '0', '01-JAN-18', 'admin');
INSERT INTO usuarios_roles (ROL, NOMBRE_USUARIO, ESTADO, PASIVO, FECHA_REGISTRO, USUARIO_REGISTRO) VALUES ('ROLE_ADMIN', 'admin', '0', '0', '01-JAN-18', 'admin');
INSERT INTO usuarios_roles (ROL, NOMBRE_USUARIO, ESTADO, PASIVO, FECHA_REGISTRO, USUARIO_REGISTRO) VALUES ('ROLE_MOVIL', 'admin', '0', '0', '01-JAN-18', 'admin');
INSERT INTO usuarios_roles (ROL, NOMBRE_USUARIO, ESTADO, PASIVO, FECHA_REGISTRO, USUARIO_REGISTRO) VALUES ('ROLE_WEB', 'admin', '0', '0', '01-JAN-18', 'admin');
INSERT INTO usuarios_roles (ROL, NOMBRE_USUARIO, ESTADO, PASIVO, FECHA_REGISTRO, USUARIO_REGISTRO) VALUES ('ROLE_CAMBIO_CONTRASENA', 'admin', '0', '0', '01-JAN-18', 'admin');

/*Segmentos*/
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa25','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00001-Jesus Lopez/Julio Lopez',null,'Jesus Lopez/Julio Lopez','Esteli','San Nicolas','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa65','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00001-17 de octubre',null,'17 de octubre','Granada','Diriomo','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa75','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00002-Moyogalpa',null,'Moyogalpa','Rivas','Moyogalpa','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa29','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00003-18 de Octubre ',null,'18 de Octubre ','Jinotega','Santa Maria de Pantasma','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa47','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00004-Pancasan, 4 de mayo ',null,'Pancasan, 4 de mayo ','RAAN','Waspan ','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa51','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00006-Presilas San Fco',null,'Presilas San Fco','RAAS','Muelle de los Bueyes','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa27','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00007-San Jose',null,'San Jose','Esteli','La Trinidad','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa46','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00007-Cecilio Flores/Jorge Dimitrov ',null,'Cecilio Flores/Jorge Dimitrov ','RAAN','Bonanza ','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa63','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00007-12 de Septiembre ',null,'12 de Septiembre ','Chinandega','Chinandega','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa74','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00008-Santa Ana Norte',null,'Santa Ana Norte','Masaya','Nindiri','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa26','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00009-Alcides Meza',null,'Alcides Meza','Esteli','Condega','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa42','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00009-24 de Julio',null,'24 de Julio','Matagalpa','Matiguas','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa45','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00009-sector # 3',null,'sector # 3','Nueva Segovia','Jalapa','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa52','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00009-San Pedro',null,'San Pedro','RAAS','El Rama','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa60','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00014-El Playon ',null,'El Playon ','Chinandega','Corinto','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa72','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00014-Rogelio Ramirez',null,'Rogelio Ramirez','Masaya','Masatepe','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa79','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00015-Oro Verde ',null,'Oro Verde ','Managua','Ciudad Sandino','R','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa39','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00017-Santa Teresita',null,'Santa Teresita','Matagalpa','Matagalpa','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa62','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00019-San Antonio',null,'San Antonio','Chinandega','Somotillo ','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa56','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00020-Los Chiles ',null,'Los Chiles ','Rio San Juan','San Carlos','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa77','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00021-Eduardo Alvarado ',null,'Eduardo Alvarado ','Rivas','Rivas','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa64','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00023-El Pueblito',null,'El Pueblito','Chinandega','Chichigalpa','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa90','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00024-4 de Abril',null,'4 de Abril','Managua','Mateare','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa34','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00029-Carlos Nuñez',null,'Carlos Nuñez','Juigalpa','Juigalpa','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa81','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00043-Cuba',null,'Cuba','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa30','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00045-La Tejera',null,'La Tejera','Jinotega','Jinotega','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa40','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00066-Lucina Mantilla',null,'Lucina Mantilla','Matagalpa','Matagalpa','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa28','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00069-Filemon Rivera',null,'Filemon Rivera','Esteli','Esteli','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa38','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00070-Lucina Mantilla',null,'Lucina Mantilla','Matagalpa','Matagalpa','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa70','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00085-Monimbo Arriba ',null,'Monimbo Arriba ','Masaya','Monimbo','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa59','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00090-Carlos Fonseca',null,'Carlos Fonseca','Chinandega','Chinandega','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa41','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00091-Las Marias ',null,'Las Marias ','Matagalpa','Matagalpa','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa84','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00254-San Judas',null,'San Judas','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa87','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00437-Ciudad Jardin',null,'Ciudad Jardin','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa82','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00474-Venezuela',null,'Venezuela','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa86','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00642-Ariel Darce',null,'Ariel Darce','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa85','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00651-Santos Lopez',null,'Santos Lopez','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa88','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00675-Col Centroamerica ',null,'Col Centroamerica ','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa83','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00698-Fco Salazar',null,'Fco Salazar','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa71','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00800-Palo Solo Teoma y Jose los Linos',null,'Palo Solo Teoma y Jose los Linos','Masaya','La Concepcion','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa36','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00802-Cayanlu',null,'Cayanlu','Madriz ','Totogalpa','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa66','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00803-Los Rastrojos ',null,'Los Rastrojos ','Leon','El Jicaral','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa69','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00804-Tecumane',null,'Tecumane','Leon','La Paz Centro','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa50','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00806-Bitinia 2, La Luna y la Noche, La Toboada, Nuevo Amanecer) ',null,'Bitinia 2, La Luna y la Noche, La Toboada, Nuevo Amanecer) ','RAAN','Bonanza ','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa44','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00807-Esquirin # 2 (Tololinga, Las Tinajas)',null,'Esquirin # 2 (Tololinga, Las Tinajas)','Matagalpa','Muy Muy','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa37','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00809-Susuli # 1',null,'Susuli # 1','Matagalpa','San Dionisio ','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa48','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00809-Silbi',null,'Silbi','RAAN','Siuna','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa68','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00809-Santa Rosa de los Parrales ',null,'Santa Rosa de los Parrales ','Leon','Larreynaga ','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa76','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00809-Las Brisas',null,'Las Brisas','Rivas','San Juan del Sur','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa67','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00810-Santa Rosa ',null,'Santa Rosa ','Leon','Achuapa','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa35','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00811-Hermanos Martinez ',null,'Hermanos Martinez ','Madriz ','Somoto ','U','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa49','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00811-El Doce, Okonwas abajo',null,'El Doce, Okonwas abajo','RAAN','Rosita','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa92','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00812-Arroyos de Cuajachillos/Filos de Cuajachillo',null,'Arroyos de Cuajachillos/Filos de Cuajachillo','Managua','Villa El Carmen','R','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa80','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00814-Los Chocoyos',null,'Los Chocoyos','Managua','El Crucero','R','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa32','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00815-Astiruas No 2',null,'Astiruas No 2','Jinotega','Jinotega','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa58','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00815-La Union',null,'La Union','Carazo','Santa Teresa','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa73','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00815-Los Encuentros',null,'Los Encuentros','Masaya','La Concepcion','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa53','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00817-Betania San Pedro',null,'Betania San Pedro','RAAS','La Cruz del Rio Grande','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa61','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00817-El Genizaro',null,'El Genizaro','Chinandega','Villanueva','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa43','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00823-Quirragua Arriba',null,'Quirragua Arriba','Matagalpa','Matiguas','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa57','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00823-Barrio Nuevo',null,'Barrio Nuevo','Carazo','Diriamba','U','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa91','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00823-Victoria de Julio ',null,'Victoria de Julio ','Managua','Tipitapa','R','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa78','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00824-Villa Eddy Monterrey ',null,'Villa Eddy Monterrey ','Rivas','Tola','R','Pacifico');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa31','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00830-El Charcon No 2',null,'El Charcon No 2','Jinotega','Pantasma','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa54','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00836-La Concha',null,'La Concha','RAAS','El Rama','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa33','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00848-Pavona Abajo (El Destino)',null,'Pavona Abajo (El Destino)','Jinotega','El Cua','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa55','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00867-Bo Nuevo, La Fonseca',null,'Bo Nuevo, La Fonseca','RAAS','Nueva Guinea','R','Resto del país');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa89','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','00983-Col Nicarao',null,'Col Nicarao','Managua','Managua','U','Managua');
Insert into SIVIN.SEGMENTOS (IDENTIFICADOR,IDENTIFICADOR_EQUIPO,ESTADO,PASIVO,FECHA_REGISTRO,USUARIO_REGISTRO,CODIGO,CODIGOSIS,COMUNIDAD,DEPARTAMENTO,MUNICIPIO,PROCEDENCIA,REGION) values ('00000000-0586-034f-0000-00001a5efa93','server','1','0',to_timestamp('01-JAN-18 12.00.00.000000000 AM','DD-MON-RR HH.MI.SSXFF AM'),'admin','01079-Israel Galeano',null,'Israel Galeano','Managua','Managua','U','Managua');


/*Plantilla*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'heading', 'Sistema Integrado de Vigilancia de las Intervenciones de Nutrición','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'title', 'SIVIN','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'footer', '2017 Ministerio de Salud Nicaragua','0','0',0);

/*login page*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login', 'Ingresar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.accountExpired', 'Cuenta de usuario ha expirado!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.accountLocked', 'Cuenta de usuario está bloqueada!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.accountNotLocked', 'Cuenta de usuario está desbloqueada!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.badCredentials', 'Nombre de usuario o contraseña incorrectos!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.credentialsExpired', 'Credenciales de usuario han expirado!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.maxSessionsOut', 'Tiene una sesión activa! No puede crear otra!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.message', 'Por favor ingresar su nombre de usuario y contraseña','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.username', 'Nombre de usuario','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.password', 'Contraseña','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.forgot.password', 'Olvidó contraseña?','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.userEnabled', 'Usuario esta activo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'login.userDisabled', 'Usuario esta inactivo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ask.chgpass', 'Exigir cambio de contraseña','0','0',0);

INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'seconds', 'segundos','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'session.expiring', 'Su sesión está a punto de expirar!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'session.expiring.confirm', 'Quiere continuar con su sesión?','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'session.expiring.time', 'Su sesión se cerrará en','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'session.keep', 'Mantener sesión','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'not', 'Notificación','0','0',0);

INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'resetPassword', 'Enviar nueva contraseña por correo','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'backLogin', 'Regresar a página de ingreso','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'invalidToken', 'El token es inválido','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'expiredToken', 'El token ha expirado','0','0',0);




/*Menu*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'home', 'Inicio','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'dashboard', 'Panel de control','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'admin', 'Administración','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'super', 'Supervisar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'supenc', 'Buscar encuesta','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'users', 'Usuarios','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encuestadores', 'Encuestadores','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'supervisores', 'Supervisores','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'translation', 'Traducción','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'seccatalogs', 'Respuestas','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'logout', 'Salir','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'reports', 'Reportes','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'family', 'Hogar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'house', 'Vivienda','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'nutrition', 'Nutrición','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'breastfeed', 'Lactancia Materna','0','0',0);

/*Usuarios*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'username', 'Usuario','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'userdesc', 'Descripción','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'useremail', 'Correo','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'userlock', 'Bloqueado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'usercred', 'Contraseña vencida','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'userexp', 'Cuenta vencida','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'userroles', 'Roles','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'usersegments', 'Segmentos','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'user.updated', 'Usuario actualizado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'user.created', 'Usuario creado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'profile', 'Perfil','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'rolEnabled', 'Rol esta activo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'rolDisabled', 'Rol esta inactivo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'rolAdded', 'Rol agregado!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'rolAll', 'Todos los roles ya están agregados!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'class ni.gob.minsa.sivin.users.model.UserSistema', 'Usuario','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'class ni.gob.minsa.sivin.users.model.Authority', 'Rol de Usuario','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'class ni.gob.minsa.sivin.domain.relationships.UsuarioSegmento', 'Segmento del Usuario','0','0',0);



/*Encuestadores/Supervisores*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ident', 'Identificador único','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'codigo', 'Código asignado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'nombreEnc', 'Nombre del encuestador','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'nombreSup', 'Nombre del supervisor','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'class ni.gob.minsa.sivin.domain.Encuestador', 'Encuestador','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'class ni.gob.minsa.sivin.domain.Supervisor', 'Supervisor','0','0',0);

INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encuestadorEnabled', 'Encuestador esta activo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encuestadorDisabled', 'Encuestador esta inactivo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'supervisorEnabled', 'Supervisor esta activo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'supervisorDisabled', 'Supervisor esta inactivo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encuestaEnabled', 'Encuesta esta activa!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encuestaDisabled', 'Encuesta esta inactiva!','0','0',0);

INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'segmentoEnabled', 'Segmento esta activo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'segmentoDisabled', 'Segmento esta inactivo!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'segmentoAdded', 'Segmento agregado!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'segmentoAll', 'Todos los segmentos ya están agregados!','0','0',0);

/*Accesos*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'access', 'Accesos de usuario','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'lastAccess', 'Ultimo acceso','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'dateCredentials', 'Ultimo cambio de contrasena','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'session', 'Id de sesion','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ipaddress', 'Direccion IP','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'logindate', 'Fecha ingreso','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'logoutdate', 'Fecha salida','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'logouturl', 'URL salida','0','0',0);

/*Audit trail*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'audittrail', 'Bitacora de cambios','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'entityClass', 'Clase','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'entityName', 'Nombre','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'entityProperty', 'Propiedad','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'entityPropertyOldValue', 'Valor anterior','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'entityPropertyNewValue', 'Nuevo valor','0','0',0);

/*Roles*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ROLE_ADMIN', 'Administrador','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ROLE_SUPER', 'Supervisor','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ROLE_WEB', 'Usuario web','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ROLE_MOVIL', 'Usuario movil','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ROLE_CAMBIO_CONTRASENA', 'Cambio de contraseña','0','0',0);

/*Metadata*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'createdBy', 'Creado por','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'dateCreated', 'Fecha creacion','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'modifiedBy', 'Modificado por','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'dateModified', 'Fecha de modificación','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'active', 'Activo','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'addedBy', 'Agregado por','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'dateAdded', 'Fecha','0','0',0);

/*Acciones, todas las paginas*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'actions', 'Acciones','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'add', 'Agregar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'save', 'Guardar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'edit', 'Editar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'back', 'Regresar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'cancel', 'Cancelar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'choose', 'Elegir','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'change', 'Cambiar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'disable', 'Deshabilitar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'enable', 'Habilitar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'end', 'Finalizar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'unlock', 'Desbloquear','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'lock', 'Bloquear','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'export', 'Exportar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'ok', 'Aceptar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'search', 'Buscar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'confirm', 'Confirmar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'please.enter', 'Favor ingresar','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ('delete', 'Eliminar', '0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ('generate', 'Generar', '0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ('parameter', 'Parámetro', '0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ('language', 'Idioma/Language', '0','0',0);

/*Mensajes generales, todas las paginas*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'enabled', 'Habilitado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'locked', 'Bloqueado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'notenabled', 'Deshabilitado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'notlocked', 'Desbloqueado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'process.errors', 'Han ocurrido errores en el proceso!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'process.success', 'El proceso se ha completado exitosamente!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'process.wait', 'Por favor espere..','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'noResults', 'No hay registros!','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'byDate', 'Filtrar fecha','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'byZone', 'Filtrar zona','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'all', 'Todos','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'options', 'Opciones','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'category', 'Categoría','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'value', 'Valor','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'denied', 'Acceso denegado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'deniedmessage', 'Lo sentimos, la página que solicitó no esta disponible con sus credenciales.','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'notfound', 'No encontrado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'notfoundmessage', 'Lo sentimos, la página que solicitó no pudo ser encontrada.','0','0',0);

/*Cambio contrasenia*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'changepass', 'Cambiar contraseña..','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'credentials.expired', 'Su contraseña ha caducado','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'pass.updated', 'Su contraseña ha sido actualizada','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'password.repeat', 'Repita la contraseña','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'Pattern.password.format', 'Al menos 8 caracteres combinando mayúsculas, minúsculas, numeros y caracteres especiales','0','0',0);

/*Pagina principal*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encact', 'Encuestas activas','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'viewmore', 'Ver más','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'usract', 'Usuarios activos','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'segact', 'Segmentos activos','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encsup', 'Encuestas supervisadas','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encday', 'Encuestas por día','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encseg', 'Encuestas por segmento','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encusr', 'Encuestas por usuario','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encenc', 'Encuestas por encuestador','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'encxsup', 'Encuestas por supervisor','0','0',0);
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('welcome', NULL, NULL, NULL, '0', 0, '0', 'Bienvenido a SIVIN');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encrea', NULL, NULL, NULL, '0', 0, '0', 'Encuestas realizadas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encinact', NULL, NULL, NULL, '0', 0, '0', 'Encuestas inactivas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encmun', NULL, NULL, NULL, '0', 0, '0', 'Encuestas por municipio');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encdep', NULL, NULL, NULL, '0', 0, '0', 'Encuestas por departamento');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encreg', NULL, NULL, NULL, '0', 0, '0', 'Encuestas por región');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encproc', NULL, NULL, NULL, '0', 0, '0', 'Encuestas por procedencia');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encsexjf', NULL, NULL, NULL, '0', 0, '0', 'Encuestas por sexo jefe de familia');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('usrenc', NULL, NULL, NULL, '0', 0, '0', 'Usuarios con encuestas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('segenc', NULL, NULL, NULL, '0', 0, '0', 'Segmentos con encuestas');

/*Formularios Relacionado a Traducción */
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'translations', 'Traducción de mensajes','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'messageKey', 'Código mensaje','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'spanish', 'Español','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'english', 'Inglés','0','0',0);

/*Formularios Relacionado a Catalogos */
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'seccatalogsform', 'Gestión de respuestas','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'catKey', 'Valor de la respuesta','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'catRoot', 'Catálogo Padre','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'pasive', 'De baja','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'order', 'Ordenamiento','0','0',0);
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'opcionesCatalogo', 'Respuestas en este catálogo','0','0',0);


/*Encuesta*/
INSERT INTO mensajes (messageKey, es, catPasive, isCat, orden) VALUES ( 'class ni.gob.minsa.sivin.domain.Encuesta', 'Encuesta','0','0',0);
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('encuesta', NULL, NULL, NULL, '0', 0, '0', 'Identificación de la encuesta');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_sec', NULL, NULL, NULL, '0', 0, '0', 'Secciones de la encuesta');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_home', NULL, NULL, NULL, '0', 0, '0', 'Información del hogar');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_seca', NULL, NULL, NULL, '0', 0, '0', 'Sección A Datos generales y características de la vivienda');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_secb', NULL, NULL, NULL, '0', 0, '0', 'Sección B.  Datos de la entrevistada/o');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_secc', NULL, NULL, NULL, '0', 0, '0', 'Sección C  Selección del niñ@');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_secd', NULL, NULL, NULL, '0', 0, '0', 'Sección D. Suplementación y desparasitación del niño seleccionado');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_sece', NULL, NULL, NULL, '0', 0, '0', 'Sección E.  Lactancia materna y patrón de consumo en niños de 0 a 24 meses');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_secf', NULL, NULL, NULL, '0', 0, '0', 'Sección F. Antropometría');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_secg', NULL, NULL, NULL, '0', 0, '0', 'Sección G. Toma de Muestra');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_sech', NULL, NULL, NULL, '0', 0, '0', 'Sección H.  Patrón de consumo aparente de alimentos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_fin', NULL, NULL, NULL, '0', 0, '0', 'La encuesta fue guardada con exito');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_next', NULL, NULL, NULL, '0', 0, '0', 'Que quiere usted hacer?');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_new', NULL, NULL, NULL, '0', 0, '0', 'Buscar otra encuesta');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_same', NULL, NULL, NULL, '0', 0, '0', 'Seguir con esta encuesta');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('enc_blank', NULL, NULL, NULL, '0', 0, '0', 'En blanco');

Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('identificador',null,null,null,'0',0,'0','Identificador del registro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('codigoenc',null,null,null,'0',0,'0','Codigo de la encuesta');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('segmento',null,null,null,'0',0,'0','Segmento censal');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('numEncuesta',null,null,null,'0',0,'0','Número de la vivienda');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fechaEntrevista',null,null,null,'0',0,'0','Fecha de la entrevista');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('jefeFamilia',null,null,null,'0',0,'0','Anote el nombre completo del jefe del hogar');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('sexJefeFamilia',null,null,null,'0',0,'0','Anote 1 si es hombre o 2 si es mujer');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('numPersonas',null,null,null,'0',0,'0','Registrar el número de personas que viven habitualmente en esta vivienda');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('agua',null,null,null,'0',0,'0','De dónde consigue el agua que usa en la casa?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('oagua',null,null,null,'0',0,'0','Otra fuente de agua para la casa');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('cuartos',null,null,null,'0',0,'0','Cuántos cuartos para dormir ocupan como hogar en la vivienda?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('lugnecesidades',null,null,null,'0',0,'0','En qué lugar hacen sus necesidades las personas que viven en su hogar?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('olugnecesidades',null,null,null,'0',0,'0','Otro lugar donde hacen necesidades');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('usacocinar',null,null,null,'0',0,'0','Para cocinar en su hogar');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ousacocinar',null,null,null,'0',0,'0','Otra cosa que usa para cocinar');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('articulos',null,null,null,'0',0,'0','Equipamiento del hogar');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('oarticulos',null,null,null,'0',0,'0','Otros articulos para el equipamiento en el hogar');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('conocefnac',null,null,null,'0',0,'0','Conoce la fecha de nacimiento de la madre/cuidadora');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fnacent',null,null,null,'0',0,'0','Fecha de nacimiento de la madre/cuidadora');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('edadent',null,null,null,'0',0,'0','Edad en años cumplidos de la madre o cuidadora. Si no recuerda anotar 88.');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('leerent',null,null,null,'0',0,'0','Preguntar a la madre si puede leer');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('escribirent',null,null,null,'0',0,'0','Preguntar a la madre si puede escribir');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('leeescent',null,null,null,'0',0,'0','Preguntar a la madre si puede leer y escribir');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('nivelent',null,null,null,'0',0,'0','Escolaridad de la entrevistada');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('gradoent',null,null,null,'0',0,'0','Grado más alto alcanzado de escolaridad');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('entrealizada',null,null,null,'0',0,'0','A quién se realiza la entrevista?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('entemb',null,null,null,'0',0,'0','Está embarazada actualmente?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('entdioluz',null,null,null,'0',0,'0','Ha dado a luz en los últimos 12 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('enthieacfol',null,null,null,'0',0,'0','Tomó pastillas de hierro y acido Fólico en su ultimo embarazo?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('entmeseshierro',null,null,null,'0',0,'0','A los cuántos meses de embarazo comenzó a tomar las Pastillas de hierro y acido fólico?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('entrechierro',null,null,null,'0',0,'0','Cada cuánto le recomendaron tomarse las tabletas de hierro y Acido fólico');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('entorechierro',null,null,null,'0',0,'0','Otra recomendacion para el hierro y acido folico');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tiemhierro',null,null,null,'0',0,'0','Por cuánto tiempo tomó el hierro y acido Fólico (Cantidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tiemhierround',null,null,null,'0',0,'0','Por cuánto tiempo tomó el hierro y acido Fólico (Unidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('dondehierro',null,null,null,'0',0,'0','Dónde obtuvo las pastillas de hierro y acido fólico?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('dondehierrobesp',null,null,null,'0',0,'0','En que ONG obtuvo las pastillas de hierro y acido fólico?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('dondehierrofesp',null,null,null,'0',0,'0','En que otro lugar obtuvo las pastillas de hierro y acido fólico?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tomadohierro',null,null,null,'0',0,'0','¿Ha tomado hierro y acido Fólico en los últimos 12 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('vita',null,null,null,'0',0,'0','Después que tuvo a su último niño/a le dieron a usted cápsulas o gotas de vitamina A?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tiempvita',null,null,null,'0',0,'0','Al cuanto tiempo después del parto le dieron la vitamina A?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('evitaemb',null,null,null,'0',0,'0','Cómo evita usted salir embarazada?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('dondeantic',null,null,null,'0',0,'0','Dónde obtiene los anticonceptivo y/o condón y/o cirugía los últimos 3 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('nuevoemb',null,null,null,'0',0,'0','Está pensando (planificando) un nuevo embarazo?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('hierro',null,null,null,'0',0,'0','Está tomando hierro y acido fólico?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('dhierro',null,null,null,'0',0,'0','Donde obtuvo el hierro y acido fólico que toma actualmente?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('numNinos',null,null,null,'0',0,'0','Cantidad de niños de 6-59 meses que viven en la vivienda');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('n1',null,null,null,'0',0,'0','El Ultimo o Menor');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('e1',null,null,null,'0',0,'0','Edad en meses del Ultimo o Menor');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('n2',null,null,null,'0',0,'0','El Segundo Anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('e2',null,null,null,'0',0,'0','Edad en meses del segundo anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('n3',null,null,null,'0',0,'0','El tercer anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('e3',null,null,null,'0',0,'0','Edad en meses del tercer anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('n4',null,null,null,'0',0,'0','El cuarto anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('e4',null,null,null,'0',0,'0','Edad en meses del cuarto anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('n5',null,null,null,'0',0,'0','El quinto anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('e5',null,null,null,'0',0,'0','Edad en meses del quinto anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('n6',null,null,null,'0',0,'0','El sexto anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('e6',null,null,null,'0',0,'0','Edad en meses del sexto anterior');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('nselec',null,null,null,'0',0,'0','Número del niño seleccionado');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('nomselec',null,null,null,'0',0,'0','Nombre del niño seleccionado');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fnacselec',null,null,null,'0',0,'0','Fecha de nacimiento niño seleccionado');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('eselect',null,null,null,'0',0,'0','Edad en meses del niño seleccionado');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('sexselec',null,null,null,'0',0,'0','Sexo del niño seleccionado');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('calim',null,null,null,'0',0,'0','cantidad de alimentos come el niño normalmente en cada tiempo de comida');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('vcome',null,null,null,'0',0,'0','Cuántas veces al día le da de comer al niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('consalim',null,null,null,'0',0,'0','Cuál es la consistencia más frecuente del alimento que sirve al niño?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('calimenf',null,null,null,'0',0,'0','Cuando el niño está enfermo ¿Qué cantidad de alimentos le da?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('clecheenf',null,null,null,'0',0,'0','Cuando el niño está enfermo ¿Qué cantidad de leche materna le da?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('hierron',null,null,null,'0',0,'0','Alguna vez usted le ha dado al niño gotas de hierro en los últimos 12 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('thierrocant',null,null,null,'0',0,'0','Por cuánto tiempo le dio las gotas de hierro al niño? (Cantidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('thierround',null,null,null,'0',0,'0','Por cuánto tiempo le dio las gotas de hierro al niño? (Unidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fhierro',null,null,null,'0',0,'0','Cuántos frascos de hierro le ha dado al niño en los últimos 12 meses. 88 es desconocido');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ghierro',null,null,null,'0',0,'0','Cuantas gotas de hierro le daba diario al niño?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('donhierro',null,null,null,'0',0,'0','Dónde obtuvo los frascos de hierro para el niño?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('donhierrobesp',null,null,null,'0',0,'0','Dónde obtuvo los frascos de hierro para el niño? Especifique ONG');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('donhierrofesp',null,null,null,'0',0,'0','Dónde obtuvo los frascos de hierro para el niño? Especifique Otro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fuhierro',null,null,null,'0',0,'0','Según Tarjeta ¿Tiene anotada la última fecha en que le dieron hierro?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fuhierror',null,null,null,'0',0,'0','Ultima fecha en que le dieron hierro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fauhierror',null,null,null,'0',0,'0','Penultima fecha en que le dieron hierro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('nvita',null,null,null,'0',0,'0','¿El niño ha recibido vitamina A en los últimos 12 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ncvita',null,null,null,'0',0,'0','Cuántas veces recibió vitamina A en los últimos 12 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tvitacant',null,null,null,'0',0,'0','¿Hace cuánto tiempo recibió la última dosis de vitamina A? (Cantidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tvitaund',null,null,null,'0',0,'0','¿Hace cuánto tiempo recibió la última dosis de vitamina A? (Unidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ndvita',null,null,null,'0',0,'0','Dónde recibió la vitamina A el niño.');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ndvitao',null,null,null,'0',0,'0','Dónde recibió la vitamina A el niño. Especifique otro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tdvita',null,null,null,'0',0,'0','Según Tarjeta ¿Tiene dosis de Vitamina A el niño?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fuvita',null,null,null,'0',0,'0','Ultima fecha en que le dieron vitamina A al niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fauvita',null,null,null,'0',0,'0','Penultima fecha en que le dieron vitamina A al niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ncnut',null,null,null,'0',0,'0','¿Le ha dado al niño Complemento Nutritivo en los últimos 12 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ncnutcant',null,null,null,'0',0,'0','¿Por cuánto tiempo ha tomado el complemento nutritivo el niño? (Cantidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ncnutund',null,null,null,'0',0,'0','¿Por cuánto tiempo ha tomado el complemento nutritivo el niño? (Unidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('doncnut',null,null,null,'0',0,'0','¿Dónde obtuvo el complemento nutritivo para el niño?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('doncnutfotro',null,null,null,'0',0,'0','¿Dónde obtuvo el complemento nutritivo para el niño? Especifique otro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('parasit',null,null,null,'0',0,'0','¿Le ha dado medicamentos contra los parásitos en los últimos 12 meses al niño)?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('cvparas',null,null,null,'0',0,'0','Cuántas veces le ha dado medicamento contra los parásitos al niño en los últimos 12 meses?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('mParasitario',null,null,null,'0',0,'0','Nombre del medicamento contra los parásitos que le ha dado al niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('otroMpEsp',null,null,null,'0',0,'0','Otro medicamento contra los parásitos que le ha dado al niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('donMp',null,null,null,'0',0,'0','Dónde le dieron los medicamentos contra los parásitos para el niño)?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('otroDonMp',null,null,null,'0',0,'0','Dónde le dieron los medicamentos contra los parásitos para el niño)? Especifique otro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('evitarParasito',null,null,null,'0',0,'0','Qué hace usted para evitar que el niño/a tenga parásitos?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('oEvitarParasito',null,null,null,'0',0,'0','Qué hace usted para evitar que el niño/a tenga parásitos? Especifique otro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('nlactmat',null,null,null,'0',0,'0','¿El niño seleccionado para encuesta de lactancia materna es el mismo de la sección C?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('sexlmat',null,null,null,'0',0,'0','Sexo del niño seleccionado para encuesta de lactancia materna');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('emeseslmat',null,null,null,'0',0,'0','Edad en meses del niño seleccionado para encuesta de lactancia materna');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('fnaclmat',null,null,null,'0',0,'0','Fecha nac del niño seleccionado para encuesta de lactancia materna');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('pecho',null,null,null,'0',0,'0','Le dio el pecho alguna vez al niño)?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('motNopecho',null,null,null,'0',0,'0','¿Por qué no le dio el pecho al niño? La razón más importante.');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('motNopechoOtro',null,null,null,'0',0,'0','¿Por qué no le dio el pecho al niño? La razón más importante. Especifique Otro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('dapecho',null,null,null,'0',0,'0','¿Está dándole el pecho actualmente?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tiempecho',null,null,null,'0',0,'0','¿Cuánto tiempo después de que nació el niño empezó a darle pecho?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tiemmama',null,null,null,'0',0,'0','Cuánto tiempo mama el nino cada vez que le da el pecho?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tiemmamaMins',null,null,null,'0',0,'0','Cuánto tiempo mama el nino cada vez que le da el pecho? Minutos');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('dospechos',null,null,null,'0',0,'0','Cuando amamanta a su niño le da de ambos pechos?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('vecespechodia',null,null,null,'0',0,'0','Cuántas veces aproximadamente desde que amanece hasta que anochece le da el pecho a su niño/a?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('vecespechonoche',null,null,null,'0',0,'0','Cuántas veces aproximadamente durante la noche le da el pecho a su niño/a');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('elmatexccant',null,null,null,'0',0,'0','Hasta qué edad el niño(a) recibió solo leche materna (exclusiva)? (Cantidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('elmatexcund',null,null,null,'0',0,'0','Hasta qué edad el niño(a) recibió solo leche materna (exclusiva)? (Unidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ediopechocant',null,null,null,'0',0,'0','Hasta qué edad le dio el pecho al niño(a)? (Cantidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ediopechound',null,null,null,'0',0,'0','Hasta qué edad le dio el pecho al niño(a)? (Unidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('combeb',null,null,null,'0',0,'0','Desde el día de ayer hasta este momento ¿Se le ha dado algo de beber o comer?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ealimcant',null,null,null,'0',0,'0','Desde que edad comenzó a dar alimentos al niño. (Cantidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ealimund',null,null,null,'0',0,'0','Desde que edad comenzó a dar alimentos al niño. (Unidad)');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('bebeLiq',null,null,null,'0',0,'0','En que da de beber los líquidos al niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('reunionPeso',null,null,null,'0',0,'0','Usted sabe si aquí se hacen reuniones para pesar a los niños?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('quienReunionPeso',null,null,null,'0',0,'0','¿Quién hace la reunión para pesar a los niños?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('quienReunionPesoOtro',null,null,null,'0',0,'0','¿Quién hace la reunión para pesar a los niños? Especifique otro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('assitioReunionPeso',null,null,null,'0',0,'0','Durante los últimos 3 meses ha ido a una reunión donde se ha pesado al niño)?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('pesoent1',null,null,null,'0',0,'0','Peso de la entrevistada en Kilogramos 1ra Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('pesoent2',null,null,null,'0',0,'0','Peso de la entrevistada en Kilogramos 2da Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tallaent1',null,null,null,'0',0,'0','Talla de la entrevistada en centímetros 1ra Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tallaent2',null,null,null,'0',0,'0','Talla de la entrevistada en centímetros 2da Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('pesonin1',null,null,null,'0',0,'0','Peso del niño en kilogramos 1ra Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('pesonin2',null,null,null,'0',0,'0','Peso del niño en kilogramos 2da Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('longnin1',null,null,null,'0',0,'0','Longitud del niño menor de 2 años (ACOSTADO) 1ra Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('longnin2',null,null,null,'0',0,'0','Longitud del niño menor de 2 años (ACOSTADO) 2da Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tallanin1',null,null,null,'0',0,'0','Talla del niño igual o mayor de 2 años (PARADO) 1ra Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('tallanin2',null,null,null,'0',0,'0','Talla del niño igual o mayor de 2 años (PARADO) 1ra Medición');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('msent',null,null,null,'0',0,'0','A la Entrevistada se le tomó muestra de Sangre');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('codmsent',null,null,null,'0',0,'0','Código de la muestra de Sangre de la Entrevistada');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('hbent',null,null,null,'0',0,'0','Anote el valor de Hb de la Entrevistada');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('msnin',null,null,null,'0',0,'0','A niño se le tomó muestra de Sangre');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('codmsnin',null,null,null,'0',0,'0','Código de la muestra de Sangre del niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('hbnin',null,null,null,'0',0,'0','Anote el valor de Hb del niño');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('moent',null,null,null,'0',0,'0','A la entrevistada se le tomó muestra de Orina');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('codmoent',null,null,null,'0',0,'0','Código de la muestra de Orina de la Entrevistada');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('pan',null,null,null,'0',0,'0','Adónde compra usted el pan?');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('sal',null,null,null,'0',0,'0','Muestras de sal');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('marcasal',null,null,null,'0',0,'0','Marca de sal. S/M Sin marca');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('azucar',null,null,null,'0',0,'0','Muestras de azucar');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('marcaazucar',null,null,null,'0',0,'0','Marca de azucar. S/M Sin marca');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAzuc',null,null,null,'0',0,'0','Patron Consumo Aparente de Azucar');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAzucFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Azucar. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsSal',null,null,null,'0',0,'0','Patron Consumo Aparente de Sal');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsSalFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Sal. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsArroz',null,null,null,'0',0,'0','Patron Consumo Aparente de Arroz');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsArrozFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Arroz. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAcei',null,null,null,'0',0,'0','Patron Consumo Aparente de Aceite');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAceiFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Aceite. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsFri',null,null,null,'0',0,'0','Patron Consumo Aparente de Frijol');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsFriFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Frijol. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCebo',null,null,null,'0',0,'0','Patron Consumo Aparente de Cebolla');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCeboFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Cebolla. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsChi',null,null,null,'0',0,'0','Patron Consumo Aparente de Chiltoma y tomate');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsChiFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Chiltoma y tomate. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsQue',null,null,null,'0',0,'0','Patron Consumo Aparente de Quesos y similares');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsQueFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Quesos y similares. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCafe',null,null,null,'0',0,'0','Patron Consumo Aparente de Cafe en polvo');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCafeFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Cafe en polvo. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsTor',null,null,null,'0',0,'0','Patron Consumo Aparente de Tortilla de Maiz');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsTorFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Tortilla de Maiz. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCar',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Aves');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCarFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Aves. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsHue',null,null,null,'0',0,'0','Patron Consumo Aparente de Huevos');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsHueFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Huevos. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPan',null,null,null,'0',0,'0','Patron Consumo Aparente de Pan Simple y Similares');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPanFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Pan Simple y Similares. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsBan',null,null,null,'0',0,'0','Patron Consumo Aparente de Bananos - plátanos maduros');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsBanFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Bananos - plátanos maduros . Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPanDul',null,null,null,'0',0,'0','Patron Consumo Aparente de Pan Dulce y Galletas');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPanDulFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Pan Dulce y Galletas. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPla',null,null,null,'0',0,'0','Patron Consumo Aparente de Bananos - plátanos verdes');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPlaFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Bananos - plátanos verdes. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPapa',null,null,null,'0',0,'0','Patron Consumo Aparente de Papas');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPapaFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Papas. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsLec',null,null,null,'0',0,'0','Patron Consumo Aparente de Leche Liquida');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsLecFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Leche Liquida. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsSalTom',null,null,null,'0',0,'0','Patron Consumo Aparente de Salsa de Tomate');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsSalTomFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Salsa de Tomate. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsGas',null,null,null,'0',0,'0','Patron Consumo Aparente de Gaseosa');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsGasFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Gaseosa. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCarRes',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Res');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCarResFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Res. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAvena',null,null,null,'0',0,'0','Patron Consumo Aparente de Avena');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAvenaFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Avena. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsNaran',null,null,null,'0',0,'0','Patron Consumo Aparente de Naranja');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsNaranFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Naranja. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPasta',null,null,null,'0',0,'0','Patron Consumo Aparente de Pastas');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPastaFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Pastas. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAyote',null,null,null,'0',0,'0','Patron Consumo Aparente de Ayote /pipian /chayote');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAyoteFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Ayote /pipian /chayote. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsMagg',null,null,null,'0',0,'0','Patron Consumo Aparente de Sopa Maggie');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsMaggFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Sopa Maggie. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsFrut',null,null,null,'0',0,'0','Patron Consumo Aparente de Frutas Tropicales');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsFrutFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Frutas Tropicales. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsRaic',null,null,null,'0',0,'0','Patron Consumo Aparente de Raices');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsRaicFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Raices. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsMenei',null,null,null,'0',0,'0','Patron Consumo Aparente de Bolsitas de Meneitos');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsMeneiFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Bolsitas de Meneitos. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsRepollo',null,null,null,'0',0,'0','Patron Consumo Aparente de Repollo');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsRepolloFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Repollo. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsZana',null,null,null,'0',0,'0','Patron Consumo Aparente de Zanahorias');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsZanaFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Zanahorias. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPinolillo',null,null,null,'0',0,'0','Patron Consumo Aparente de Pinolillo');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPinolilloFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Pinolillo. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsOVerd',null,null,null,'0',0,'0','Patron Consumo Aparente de Otras Verduras');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsOVerdFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Otras Verduras. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPesc',null,null,null,'0',0,'0','Patron Consumo Aparente de Pescado-chuleta');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsPescFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Pescado-chuleta. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAlimComp',null,null,null,'0',0,'0','Patron Consumo Aparente de Alimentos Comprados');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsAlimCompFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Alimentos Comprados. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsLecPol',null,null,null,'0',0,'0','Patron Consumo Aparente de Leche en Polvo Entera');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsLecPolFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Leche en Polvo Entera. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCarCer',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Cerdo');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCarCerFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Cerdo. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsEmb',null,null,null,'0',0,'0','Patron Consumo Aparente de Embutidos');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsEmbFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Embutidos. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsMar',null,null,null,'0',0,'0','Patron Consumo Aparente de Mariscos');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsMarFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Mariscos. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCarCaza',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Caza');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('patConsCarCazaFrec',null,null,null,'0',0,'0','Patron Consumo Aparente de Carne de Caza. Frecuencia');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('encuestador',null,null,null,'0',0,'0','Persona que realiza la encuesta');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('supervisor',null,null,null,'0',0,'0','Persona que supervisa la encuesta');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('USUARIO_REGISTRO',null,null,null,'0',0,'0','Usuario que registra la encuesta');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('FECHA_REGISTRO',null,null,null,'0',0,'0','Fecha en la que se registra la encuesta');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('ESTADO',null,null,null,'0',0,'0','Indica el estado del registro');
Insert into SIVIN.MENSAJES (MESSAGEKEY,CATKEY,CATROOT,EN,ISCAT,ORDEN,CATPASIVE,ES) values ('PASIVO',null,null,null,'0',0,'0','Indica si el registro fue anulado');

/*Catalogos*/
/*Sexo*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SEXO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Sexo');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SEXO_M', '1', 'CAT_SEXO', NULL, '0', 1, '0', 'Hombre');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SEXO_F', '2', 'CAT_SEXO', NULL, '0', 2, '0', 'Mujer');

/*Agua*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Agua');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_1', '1', 'CAT_AGUA', NULL, '0', 1, '0', '1. Agua de paja  (dentro de la casa)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_2', '2', 'CAT_AGUA', NULL, '0', 2, '0', '2. Agua de paja en patio');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_3', '3', 'CAT_AGUA', NULL, '0', 3, '0', '3. Puesto público (de paja)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_4', '4', 'CAT_AGUA', NULL, '0', 4, '0', '4. Pozo privado');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_5', '5', 'CAT_AGUA', NULL, '0', 5, '0', '5. Río/ lago/ manantial');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_6', '6', 'CAT_AGUA', NULL, '0', 6, '0', '6. Agua de  lluvia');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_7', '7', 'CAT_AGUA', NULL, '0', 7, '0', '7. Compra particular, puesto, pipa o vecino');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_8', '8', 'CAT_AGUA', NULL, '0', 8, '0', '8. Pozo público');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AGUA_9', '9', 'CAT_AGUA', NULL, '0', 9, '0', '9. Otro especifique');

/*Necesidades*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NECESIDADES', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Necesidades');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NECESIDADES_1', '1', 'CAT_NECESIDADES', NULL, '0',1, '0', '1. Inodoro');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NECESIDADES_2', '2', 'CAT_NECESIDADES', NULL, '0',2, '0', '2. Letrina');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NECESIDADES_3', '3', 'CAT_NECESIDADES', NULL, '0',3, '0', '3. Aire libre/ monte');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NECESIDADES_9', '9', 'CAT_NECESIDADES', NULL, '0',4, '0', '9. Otro especifique');

/*Cocinar*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_COCINA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Cocinar');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_COCINA_1', '1', 'CAT_COCINA', NULL, '0',1, '0', '1. Kerosén');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_COCINA_2', '2', 'CAT_COCINA', NULL, '0',2, '0', '2. Electricidad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_COCINA_3', '3', 'CAT_COCINA', NULL, '0',3, '0', '3. Tanque o cilindro de gas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_COCINA_4', '4', 'CAT_COCINA', NULL, '0',4, '0', '4. Leña');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_COCINA_5', '5', 'CAT_COCINA', NULL, '0',5, '0', '5. Carbón');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_COCINA_9', '9', 'CAT_COCINA', NULL, '0',6, '0', '9. Otro especifique');

/*Articulos*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ARTICULOS', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Articulos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ARTICULOS_A', 'a', 'CAT_ARTICULOS', NULL, '0',1, '0', 'a.  Radio/ Equipo de sonido propio');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ARTICULOS_B', 'b', 'CAT_ARTICULOS', NULL, '0',2, '0', 'b. Televisión propia');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ARTICULOS_C', 'c', 'CAT_ARTICULOS', NULL, '0',3, '0', 'c. Refrigerador propio');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ARTICULOS_D', 'd', 'CAT_ARTICULOS', NULL, '0',4, '0', 'd. Vehículo propio (carro/ moto/ panga)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ARTICULOS_E', 'e', 'CAT_ARTICULOS', NULL, '0',5, '0', 'e. Luz eléctrica');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ARTICULOS_9', '9', 'CAT_ARTICULOS', NULL, '0',6, '0', '9. Otro especifique');

/*Si No*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINO_1','1','CAT_SINO',NULL,'0',1,'0','1. Si');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINO_2','2','CAT_SINO',NULL,'0',2,'0','2. No');

/*Si No*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINOL', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No Letra');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINO_SI','S','CAT_SINOL',NULL,'0',1,'0','Si');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINO_NO','N','CAT_SINOL',NULL,'0',2,'0','No');

/*Si No No Recuerda*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONR', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No No Recuerda');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONR_1','1','CAT_SINONR',NULL,'0',1,'0','1. Si');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONR_2','2','CAT_SINONR',NULL,'0',2,'0','2. No');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONR_8','8','CAT_SINONR',NULL,'0',3,'0','8. No Recuerda (NR/NS)');

/*nivel escolaridad*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NIVEL', NULL, NULL, NULL, '1', 0, '0', 'Catalogo nivel escolaridad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NIVEL_N','n','CAT_NIVEL',NULL,'0',1,'0','n). Ninguno (Alfabetizada)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NIVEL_P','p','CAT_NIVEL',NULL,'0',2,'0','p). Primaria');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NIVEL_S','s','CAT_NIVEL',NULL,'0',3,'0','s). Secundaria');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NIVEL_U','u','CAT_NIVEL',NULL,'0',4,'0','u). Universidad');

/*GRADO escolaridad*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GRADO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo grado escolaridad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GRADO_1','1','CAT_GRADO',NULL,'0',1,'0','1');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GRADO_2','2','CAT_GRADO',NULL,'0',2,'0','2');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GRADO_3','3','CAT_GRADO',NULL,'0',3,'0','3');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GRADO_4','4','CAT_GRADO',NULL,'0',4,'0','4');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GRADO_5','5','CAT_GRADO',NULL,'0',5,'0','5');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GRADO_6','6','CAT_GRADO',NULL,'0',6,'0','6');

/*Entrevistado*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ENTREVISTADO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Entrevistado');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ENTREVISTADO_1','1','CAT_ENTREVISTADO', NULL, '0',1, '0', '1. Madre');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ENTREVISTADO_2','2','CAT_ENTREVISTADO', NULL, '0',2, '0', '2. Cuidadora de 15-49 años.');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ENTREVISTADO_3','3','CAT_ENTREVISTADO', NULL, '0',3, '0', '3. Cuidadora de 50 años o más');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_ENTREVISTADO_4','4','CAT_ENTREVISTADO', NULL, '0',4, '0', '4. Cuidador incluyendo el padre');

/*HIERRO FRECUENCIA*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROFREC', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO FRECUENCIA');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROFREC_1','1','CAT_HIERROFREC',NULL,'0',1,'0','1. Una tableta diario');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROFREC_2','2','CAT_HIERROFREC',NULL,'0',2,'0','2. Una tableta semanal');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROFREC_3','3','CAT_HIERROFREC',NULL,'0',3,'0','3. Una tableta 2 veces semana');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROFREC_4','4','CAT_HIERROFREC',NULL,'0',4,'0','4. Dos tabletas una vez a la semana');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROFREC_9','9','CAT_HIERROFREC',NULL,'0',5,'0','9. Otro especifique');

/*HIERRO TIEMPO*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROTIEMP', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO TIEMPO');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROTIEMP_D','d','CAT_HIERROTIEMP',NULL,'0',1,'0','Días');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROTIEMP_S','s','CAT_HIERROTIEMP',NULL,'0',2,'0','Semanas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROTIEMP_M','m','CAT_HIERROTIEMP',NULL,'0',3,'0','Meses');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROTIEMP_N','n','CAT_HIERROTIEMP',NULL,'0',4,'0','No Sabe');

/*HIERRO OBTUVO*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO OBTUVO');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT_A','a','CAT_HIERROOBT',NULL,'0',1,'0','a. Puesto/Centro/Hospital (unidad de salud)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT_B','b','CAT_HIERROOBT',NULL,'0',2,'0','b. ONG/Privado (especifique)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT_C','c','CAT_HIERROOBT',NULL,'0',3,'0','c. Compradas (farmacia/mercado)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT_D','d','CAT_HIERROOBT',NULL,'0',4,'0','d. Brigadista/ comunidad/ partera');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT_E','e','CAT_HIERROOBT',NULL,'0',5,'0','e. Jornada Nacional de Vacunación');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT_F','f','CAT_HIERROOBT',NULL,'0',6,'0','f. Otro especifique');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBT_G','g','CAT_HIERROOBT',NULL,'0',7,'0','g. La madre no recuerda');

/*Tiempo Vitamina A*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Tiempo Vitamina A');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITA_1','1','CAT_VITA',NULL,'0',1,'0','1. En las primeras 4 semanas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITA_2','2','CAT_VITA',NULL,'0',2,'0','2. Más de 4 semanas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITA_9','9','CAT_VITA',NULL,'0',3,'0','9. NS/NR');

/*Evita Embarazo*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Evita Embarazo');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_1','1','CAT_XEMB',NULL,'0',1,'0','1. Natural');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_2','2','CAT_XEMB',NULL,'0',2,'0','2. Método de amenorrea por lactancia (MELA)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_3','3','CAT_XEMB',NULL,'0',3,'0','3. Anticoncepción oral');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_4','4','CAT_XEMB',NULL,'0',4,'0','4. Anticoncepción inyectable mensual');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_5','5','CAT_XEMB',NULL,'0',5,'0','5. Anticoncepción inyectable trimestral');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_6','6','CAT_XEMB',NULL,'0',6,'0','6. T de Cobre o DIU');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_7','7','CAT_XEMB',NULL,'0',7,'0','7. Condón');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_8','8','CAT_XEMB',NULL,'0',8,'0','8. Quirúrgico');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_9','9','CAT_XEMB',NULL,'0',9,'0','9. No sé');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_XEMB_10','10','CAT_XEMB',NULL,'0',10,'0','10. No uso');

/*Obtiene anticonceptivos o condon*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DXEMB', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Obtiene anticonceptivos o condon');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DXEMB_1','1','CAT_DXEMB',NULL,'0',1,'0','1. Unidad de salud');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DXEMB_2','2','CAT_DXEMB',NULL,'0',2,'0','2. Ong´s');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DXEMB_3','3','CAT_DXEMB',NULL,'0',3,'0','3. Comprada (farmacia, mercado)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DXEMB_4','4','CAT_DXEMB',NULL,'0',4,'0','4. Brigadista/comunidad/partera');

/*Cantidad de alimentos*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CALIM', NULL, NULL, NULL, '1', 0, '0', 'Catalogo cantidad de alimentos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CALIM_1','1','CAT_CALIM',NULL,'0',1,'0','1) Menos de la primera grada (menos de 8 cucharadas)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CALIM_2','2','CAT_CALIM',NULL,'0',2,'0','2) Hasta la primera grada (8 cucharadas soperas)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CALIM_3','3','CAT_CALIM',NULL,'0',3,'0','3) Hasta la segunda gradas (12 cucharadas soperas)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CALIM_4','4','CAT_CALIM',NULL,'0',4,'0','4) Hasta la tercera gradas (16 cucharadas soperas)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CALIM_5','5','CAT_CALIM',NULL,'0',5,'0','5) De 1 ½ a 2 tazas (24 a 32 cucharadas soperas)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CALIM_6','6','CAT_CALIM',NULL,'0',6,'0','6) No le doy de comer aún');

/*Consistencia de alimentos*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CONSALIM', NULL, NULL, NULL, '1', 0, '0', 'Catalogo consistencia de alimentos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CONSALIM_1','1','CAT_CONSALIM',NULL,'0',1,'0','1. Líquido o sopa rala');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CONSALIM_2','2','CAT_CONSALIM',NULL,'0',2,'0','2. Líquido o sopa Espesa/puré/mogo');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CONSALIM_3','3','CAT_CONSALIM',NULL,'0',3,'0','3. Trocitos/pedacitos/desmenuzada');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_CONSALIM_4','4','CAT_CONSALIM',NULL,'0',4,'0','4. Normal – olla familiar');

/*Cantidad de alimentos enfermo*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AENF', NULL, NULL, NULL, '1', 0, '0', 'Catalogo cantidad de alimentos enfermo');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AENF_1','1','CAT_AENF',NULL,'0',1,'0','1. Más cantidad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AENF_2','2','CAT_AENF',NULL,'0',2,'0','2. Menos cantidad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AENF_3','3','CAT_AENF',NULL,'0',3,'0','3. Igual cantidad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_AENF_4','4','CAT_AENF',NULL,'0',4,'0','4. Le suspende los alimentos');

/*Cantidad de leche enfermo*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LENF', NULL, NULL, NULL, '1', 0, '0', 'Catalogo cantidad de leche enfermo');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LENF_1','1','CAT_LENF',NULL,'0',1,'0','1. Más cantidad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LENF_2','2','CAT_LENF',NULL,'0',2,'0','2. Menos cantidad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LENF_3','3','CAT_LENF',NULL,'0',3,'0','3. Igual cantidad');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LENF_4','4','CAT_LENF',NULL,'0',4,'0','4. Le suspende la leche materna');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LENF_5','5','CAT_LENF',NULL,'0',5,'0','5. Actualmente no toma pecho');

/*gotas de hierro*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GOTHIE', NULL, NULL, NULL, '1', 0, '0', 'Catalogo gotas de hierro');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GOTHIE_1','1','CAT_GOTHIE',NULL,'0',1,'0','1. 15 gotas al diario');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GOTHIE_2','2','CAT_GOTHIE',NULL,'0',2,'0','2. Menos de 15 gotas diario');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_GOTHIE_3','3','CAT_GOTHIE',NULL,'0',3,'0','3. Más de 15 gotas diario');

/*HIERRO OBTUVO NINO*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBTNIN', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO OBTUVO NINO');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBTNIN_A','a','CAT_HIERROOBTNIN',NULL,'0',1,'0','a. Puesto/Centro/Hospital (unidad de salud)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBTNIN_B','b','CAT_HIERROOBTNIN',NULL,'0',2,'0','b. ONG/Privado (especifique)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBTNIN_C','c','CAT_HIERROOBTNIN',NULL,'0',3,'0','c. Compradas (farmacia/mercado)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBTNIN_D','d','CAT_HIERROOBTNIN',NULL,'0',4,'0','d. Brigadista/ comunidad/ partera');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBTNIN_E','e','CAT_HIERROOBTNIN',NULL,'0',5,'0','e. Jornada Nacional de Vacunación');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_HIERROOBTNIN_F','f','CAT_HIERROOBTNIN',NULL,'0',6,'0','f. Otro especifique');

/*Si No No Tiene*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONT', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No No Tiene');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONT_1','1','CAT_SINONT',NULL,'0',1,'0','1. Si');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONT_2','2','CAT_SINONT',NULL,'0',2,'0','2. No');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONT_3','3','CAT_SINONT',NULL,'0',3,'0','3. No Tiene');

/*VITA TIEMPO*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITATIEMP', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO TIEMPO');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITATIEMP_S','s','CAT_VITATIEMP',NULL,'0',1,'0','Semanas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITATIEMP_M','m','CAT_VITATIEMP',NULL,'0',2,'0','Meses');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITATIEMP_A','a','CAT_VITATIEMP',NULL,'0',3,'0','Años');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_VITATIEMP_N','n','CAT_VITATIEMP',NULL,'0',4,'0','No sabe');




/*Donde recibio vitamina A*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEA', NULL, NULL, NULL, '1', 0, '0', 'Donde recibio vitamina A');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEA_1','1','CAT_DONDEA',NULL,'0',1,'0','1. Jornada Nacional de Vacunacion');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEA_2','2','CAT_DONDEA',NULL,'0',2,'0','2. Unidad de Salud (Centro, puesto salud)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEA_3','3','CAT_DONDEA',NULL,'0',3,'0','3. Otro, especifique');

/*Donde obtuvo micronutritiente en polvo*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN', NULL, NULL, NULL, '1', 0, '0', 'Donde obtuvo micronutritiente en polvo');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN_A','a','CAT_DONDEMN',NULL,'0',1,'0','a) Programa AMOR. Centro /Puesto de Salud MINSA');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN_B','b','CAT_DONDEMN',NULL,'0',2,'0','b) Programa AMOR MIFAM');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN_C','c','CAT_DONDEMN',NULL,'0',3,'0','c) CDI MIFAM');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN_D','d','CAT_DONDEMN',NULL,'0',4,'0','d) Brigadista/Promotor de Salud');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN_E','e','CAT_DONDEMN',NULL,'0',5,'0','e) ONG (Organización no Gubernamental)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN_F','f','CAT_DONDEMN',NULL,'0',6,'0','f) Otros');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONDEMN_G','g','CAT_DONDEMN',NULL,'0',7,'0','g) No recuerda');

/*medicamento contra parasitos*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_MEDPAR', NULL, NULL, NULL, '1', 0, '0', 'medicamento contra parasitos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_MEDPAR_A','a','CAT_MEDPAR',NULL,'0',1,'0','a. Albendazol');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_MEDPAR_B','b','CAT_MEDPAR',NULL,'0',2,'0','b. Mebendazol');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_MEDPAR_C','c','CAT_MEDPAR',NULL,'0',3,'0','c. Metronidazol');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_MEDPAR_D','d','CAT_MEDPAR',NULL,'0',4,'0','d. Otro, especifique');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_MEDPAR_E','e','CAT_MEDPAR',NULL,'0',5,'0','e. NS/NR');

/*donde medicamento contra parasitos*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONMEDPAR', NULL, NULL, NULL, '1', 0, '0', 'donde medicamento contra parasitos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONMEDPAR_A','a','CAT_DONMEDPAR',NULL,'0',1,'0','a) Hospital/ Centro/Puesto de Salud/Unidad de Salud MINSA');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONMEDPAR_B','b','CAT_DONMEDPAR',NULL,'0',2,'0','b) Jornada Nacional de Vacunación. Hospital /Centro/Puesto de Salud MINSA');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONMEDPAR_C','c','CAT_DONMEDPAR',NULL,'0',3,'0','c) Brigadista/Promotor de Salud');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONMEDPAR_D','d','CAT_DONMEDPAR',NULL,'0',4,'0','d) ONG (Organización no Gubernamental): Cualquier programa/centro/puesto/clínica de salud perteneciente a cualquier ONG');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONMEDPAR_E','e','CAT_DONMEDPAR',NULL,'0',5,'0','e) Otros');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_DONMEDPAR_F','f','CAT_DONMEDPAR',NULL,'0',6,'0','f) No recuerda');

/*que hace para evitar parasitos*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR', NULL, NULL, NULL, '1', 0, '0', 'que hace para evitar parasitos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_A','a','CAT_EVITARPAR',NULL,'0',1,'0','a. Dar medicamentos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_B','b','CAT_EVITARPAR',NULL,'0',2,'0','b. Lavarse las manos con agua y jabón');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_C','c','CAT_EVITARPAR',NULL,'0',3,'0','c. Mantener limpia la casa y sus alrededores');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_D','d','CAT_EVITARPAR',NULL,'0',4,'0','d. Mantener tapado los alimentos y el agua');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_E','e','CAT_EVITARPAR',NULL,'0',5,'0','e. Mantener a los niños/as con zapatos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_F','f','CAT_EVITARPAR',NULL,'0',6,'0','f. Evitar el fecalismo al aire libre');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_G','g','CAT_EVITARPAR',NULL,'0',7,'0','g. Otro, especifique');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_EVITARPAR_H','h','CAT_EVITARPAR',NULL,'0',8,'0','h. NS/NR');

/*porque no dio pecho*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO', NULL, NULL, NULL, '1', 0, '0', 'porque no dio pecho');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_1','1','CAT_NODIOPECHO',NULL,'0',1,'0','Madre no quería');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_2','2','CAT_NODIOPECHO',NULL,'0',2,'0','Niñ@ se enfermó');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_3','3','CAT_NODIOPECHO',NULL,'0',3,'0','No tenía leche');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_4','4','CAT_NODIOPECHO',NULL,'0',4,'0','Salía a trabajar/estudiar');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_5','5','CAT_NODIOPECHO',NULL,'0',5,'0','La madre se enfermó');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_6','6','CAT_NODIOPECHO',NULL,'0',6,'0','Pezón invertido o lesión');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_7','7','CAT_NODIOPECHO',NULL,'0',7,'0','Nin@ no quería');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_NODIOPECHO_8','8','CAT_NODIOPECHO',NULL,'0',8,'0','Otro Especificar');

/*tiempo despues de nacer le dio pecho*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TNACPECHO', NULL, NULL, NULL, '1', 0, '0', 'tiempo despues de nacer le dio pecho');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TNACPECHO_1','1','CAT_TNACPECHO',NULL,'0',1,'0','Menos de una hora');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TNACPECHO_2','2','CAT_TNACPECHO',NULL,'0',2,'0','1 a 24 horas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TNACPECHO_3','3','CAT_TNACPECHO',NULL,'0',3,'0','Más de 24 horas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TNACPECHO)4','4','CAT_TNACPECHO',NULL,'0',4,'0','NS/NR');

/*tiempo mama el niño cuando le da el pecho*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TTOMAPECHO', NULL, NULL, NULL, '1', 0, '0', 'tiempo mama el niño cuando le da el pecho');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TTOMAPECHO_1','1','CAT_TTOMAPECHO',NULL,'0',1,'0','Hasta que tiene suave los pechos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TTOMAPECHO_2','2','CAT_TTOMAPECHO',NULL,'0',2,'0','Hasta que el niño quiere aunque no se me pongan suaves los pechos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TTOMAPECHO_3','3','CAT_TTOMAPECHO',NULL,'0',3,'0','Hasta que se me vacíe uno de los pechos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TTOMAPECHO_4','4','CAT_TTOMAPECHO',NULL,'0',4,'0','El tiempo que el niño quiera');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_TTOMAPECHO_8','8','CAT_TTOMAPECHO',NULL,'0',5,'0','No sabe/no se acuerda');

/*Si No A veces*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINOAV', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No A veces');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINOAV_1','1','CAT_SINOAV',NULL,'0',1,'0','1. Si');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINOAV_2','2','CAT_SINOAV',NULL,'0',2,'0','2. No');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINOAV_3','3','CAT_SINOAV',NULL,'0',3,'0','3. A veces');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINOAV_8','8','CAT_SINOAV',NULL,'0',4,'0','8. NS/ no se acuerda');


/*Lactancia Materna TIEMPO*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LACTTIEMP', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO TIEMPO');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LACTTIEMP_D','d','CAT_LACTTIEMP',NULL,'0',1,'0','Días');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LACTTIEMP_S','s','CAT_LACTTIEMP',NULL,'0',2,'0','Semanas');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LACTTIEMP_M','m','CAT_LACTTIEMP',NULL,'0',3,'0','Meses');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LACTTIEMP_N','n','CAT_LACTTIEMP',NULL,'0',4,'0','No Sabe');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_LACTTIEMP_C','c','CAT_LACTTIEMP',NULL,'0',4,'0','Continúa con lactancia materna exclusiva');

/*en que da de beber*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_BEBENIN', NULL, NULL, NULL, '1', 0, '0', 'en que da de beber');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_BEBENIN_V','v','CAT_BEBENIN',NULL,'0',1,'0','Vaso');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_BEBENIN_T','t','CAT_BEBENIN',NULL,'0',2,'0','Taza');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_BEBENIN_P','p','CAT_BEBENIN',NULL,'0',3,'0','Pacha');

/*quien hace reunion para pesar a los ninos*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_QREUPESO', NULL, NULL, NULL, '1', 0, '0', 'quien hace reunion para pesar a los ninos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_QREUPESO_1','1','CAT_QREUPESO',NULL,'0',1,'0','MINSA (PROCOSAN)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_QREUPESO_2','2','CAT_QREUPESO',NULL,'0',2,'0','MIFAMILIA (PROGRAMA AMOR)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_QREUPESO_3','3','CAT_QREUPESO',NULL,'0',3,'0','Otro especifique');

/*Si No No Aplica*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No No Aplica');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONA_1','1','CAT_SINONA',NULL,'0',1,'0','1. Si');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONA_2','2','CAT_SINONA',NULL,'0',2,'0','2. No');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_SINONA_3','3','CAT_SINONA',NULL,'0',3,'0','3. No Aplica');

/*Frecuencia de consumo*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_FRECCON', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No No Aplica');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_FRECCON_1','1','CAT_FRECCON',NULL,'0',1,'0','Muy frecuente (6 a 7 d/s)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_FRECCON_2','2','CAT_FRECCON',NULL,'0',2,'0','Frecuente (3 a 5 d/s)');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('CAT_FRECCON_3','3','CAT_FRECCON',NULL,'0',3,'0','Poco frecuente (< 3 d/s)');


//INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES (,'',,NULL,'0',,'0','');

/*Catalogo zonas del reporte*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('ZON_REP', NULL, NULL, NULL, '1', 0, '0', 'Filtro de zona del reporte');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('ZON_REP_0','0','ZON_REP',NULL,'0',1,'0','Todos');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('ZON_REP_1','1','ZON_REP',NULL,'0',2,'0','Procedencia');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('ZON_REP_2','2','ZON_REP',NULL,'0',3,'0','Región');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('ZON_REP_3','3','ZON_REP',NULL,'0',4,'0','Departamento');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('ZON_REP_4','4','ZON_REP',NULL,'0',5,'0','Municipio');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('ZON_REP_5','5','ZON_REP',NULL,'0',6,'0','Segmento');

/*Catalogo procedencia*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('PROC', NULL, NULL, NULL, '1', 0, '0', 'Catalogo procedencia');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('PROC_1','U','PROC',NULL,'0',1,'0','Urbana');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('PROC_2','R','PROC',NULL,'0',2,'0','Rural');

/*Reportes Hogar*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_HOG', NULL, NULL, NULL, '1', 0, '0', 'Reportes categoría hogar');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_HOG_1','1','REP_HOG',NULL,'0',1,'0','Sexo del jefe del hogar');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_HOG_2','2','REP_HOG',NULL,'0',2,'0','Número de personas en el hogar');

/*Reportes vivienda*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_VIV', NULL, NULL, NULL, '1', 0, '0', 'Reportes categoría vivienda');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_VIV_1','1','REP_VIV',NULL,'0',1,'0','Agua de la casa');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_VIV_2','2','REP_VIV',NULL,'0',2,'0','Numero de cuartos para dormir');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_VIV_3','3','REP_VIV',NULL,'0',3,'0','Donde hacen las necesidades');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('REP_VIV_4','4','REP_VIV',NULL,'0',4,'0','Con que cocinan en su hogar');

/*Opciones exportacion*/
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('OPC_EXP', NULL, NULL, NULL, '1', 0, '0', 'Opciones exportación');
INSERT INTO mensajes (messageKey, catKey, catRoot, en, isCat, orden, catPasive, es) VALUES ('OPC_EXP_1','1','OPC_EXP',NULL,'0',1,'0','Exportar todo');

