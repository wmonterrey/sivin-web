/*USUARIOS*/
INSERT INTO `roles` (`ROL`) VALUES ('ROLE_SUPER');
INSERT INTO `roles` (`ROL`) VALUES ('ROLE_ADMIN');
INSERT INTO `roles` (`ROL`) VALUES ('ROLE_MOVIL');
INSERT INTO `roles` (`ROL`) VALUES ('ROLE_WEB');
INSERT INTO `usuarios_sistema` (`NOMBRE_USUARIO`, `CUENTA_SINEXPIRAR`, `CUENTA_SINBLOQUEAR`, `DESCRIPCION`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `CREDENCIAL_SINEXPIRAR`, `CORREO_ELECTRONICO`, `HABILITADO`, `FECHA_ULTACC`, `FECHA_ULTMODCRED`, `FECHA_ULTMOD`, `USUARIO_ULTMOD`, `CONTRASENA`) VALUES ('admin', '', '', 'Administrador', '2014-09-20 08:31:00', 'admin', '', 'admincndr@minsa.gob.ni', '', '2014-11-16 10:05:40', NULL, '2014-11-13 17:58:06', 'admin', '6c36dc262b0e44be5811c2296669fc65643aec9dcaa4a76501e0a9508b633fd01ee59a207f8c6d68');
INSERT INTO `usuarios_roles` (`ROL`, `NOMBRE_USUARIO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('ROLE_SUPER', 'admin', '0', '0', '2016-06-07 10:47:12', 'admin');
INSERT INTO `usuarios_roles` (`ROL`, `NOMBRE_USUARIO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('ROLE_ADMIN', 'admin', '0', '0', '2016-06-07 10:47:12', 'admin');
INSERT INTO `usuarios_roles` (`ROL`, `NOMBRE_USUARIO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('ROLE_MOVIL', 'admin', '0', '0', '2016-06-07 10:47:12', 'admin');
INSERT INTO `usuarios_roles` (`ROL`, `NOMBRE_USUARIO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('ROLE_WEB', 'admin', '0', '0', '2016-06-07 10:47:12', 'admin');

INSERT INTO `usuarios_sistema` (`NOMBRE_USUARIO`, `CUENTA_SINEXPIRAR`, `CUENTA_SINBLOQUEAR`, `DESCRIPCION`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `CREDENCIAL_SINEXPIRAR`, `CORREO_ELECTRONICO`, `HABILITADO`, `FECHA_ULTACC`, `FECHA_ULTMODCRED`, `FECHA_ULTMOD`, `USUARIO_ULTMOD`, `CONTRASENA`) VALUES ('tab91', '', '', 'Administrador', '2014-09-20 08:31:00', 'admin', '', 'admincndr@minsa.gob.ni', '', '2014-11-16 10:05:40', NULL, '2014-11-13 17:58:06', 'admin', '6c36dc262b0e44be5811c2296669fc65643aec9dcaa4a76501e0a9508b633fd01ee59a207f8c6d68');
INSERT INTO `usuarios_roles` (`ROL`, `NOMBRE_USUARIO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('ROLE_MOVIL', 'tab91', '0', '0', '2016-06-07 10:47:12', 'admin');

INSERT INTO `usuarios_sistema` (`NOMBRE_USUARIO`, `CUENTA_SINEXPIRAR`, `CUENTA_SINBLOQUEAR`, `DESCRIPCION`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `CREDENCIAL_SINEXPIRAR`, `CORREO_ELECTRONICO`, `HABILITADO`, `FECHA_ULTACC`, `FECHA_ULTMODCRED`, `FECHA_ULTMOD`, `USUARIO_ULTMOD`, `CONTRASENA`) VALUES ('tab92', '', '', 'Administrador', '2014-09-20 08:31:00', 'admin', '', 'admincndr@minsa.gob.ni', '', '2014-11-16 10:05:40', NULL, '2014-11-13 17:58:06', 'admin', '6c36dc262b0e44be5811c2296669fc65643aec9dcaa4a76501e0a9508b633fd01ee59a207f8c6d68');
INSERT INTO `usuarios_roles` (`ROL`, `NOMBRE_USUARIO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('ROLE_MOVIL', 'tab92', '0', '0', '2016-06-07 10:47:12', 'admin');


INSERT INTO `sivin`.`segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa25', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '1', 'Jesus Lopez/Julio Lopez', 'Esteli', 'San Nicolas', 'R', 'Resto del pa�s');
INSERT INTO `sivin`.`segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa26', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '2', 'Alcides Meza', 'Esteli', 'Condega', 'R', 'Resto del pa�s');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa27', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '833', NULL, 'Barrio Nuevo', 'Carazo', 'Diriamba', 'U', 'Pacifico');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa28', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '815', NULL, 'La Union', 'Carazo', 'Santa Teresa', 'R', 'Pacifico');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa29', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '803', NULL, 'Los Rastrojos', 'Leon', 'El Jicaral', 'R', 'Pacifico');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa30', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '809', NULL, 'Santa Rosa de los Parrales', 'Leon', 'Larreynaga', 'R', 'Pacifico');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa31', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '474', NULL, 'Venezuela', 'Managua', 'Managua', 'U', 'Managua');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa32', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '823', NULL, 'Victoria de Julio ', 'Managua', 'Tipitapa', 'R', 'Managua');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa33', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '85', NULL, 'Monimbo Arriba', 'Masaya', 'Monimbo', 'U', 'Managua');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa34', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '800', NULL, 'Los Encuentros', 'Masaya', 'La Concepcion', 'R', 'Managua');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa35', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '70', NULL, 'Lucila Mantilla', 'Mapatalpa', 'Mapatalpa', 'R', 'Resto del pa�s');
INSERT INTO `segmentos` (`identificador`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`, `codigo`, `codigosis`, `comunidad`, `departamento`, `municipio`, `procedencia`, `region`) VALUES ('00000000-0586-034f-0000-00001a5efa36', 'server', '1', '0', '2017-11-17 09:09:54', 'admin', '17', NULL, 'Santa Teresita', 'Mapatalpa', 'Mapatalpa', 'R', 'Resto del pa�s');

INSERT INTO `sivin`.`usuarios_segmentos` (`segmento`, `usuario`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('00000000-0586-034f-0000-00001a5efa25', 'admin', 'server', '1', '0', '2017-11-17 10:41:37', 'admin');
INSERT INTO `sivin`.`usuarios_segmentos` (`segmento`, `usuario`, `IDENTIFICADOR_EQUIPO`, `ESTADO`, `PASIVO`, `FECHA_REGISTRO`, `USUARIO_REGISTRO`) VALUES ('00000000-0586-034f-0000-00001a5efa26', 'admin', 'server', '1', '0', '2017-11-17 10:42:06', 'admin');

/*Plantilla*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'heading', 'Sistema Integrado de Vigilancia de las Intervenciones de Nutrici�n','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'title', 'SIVIN','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'footer', '2017 Ministerio de Salud Nicaragua','0','0',0);

/*login page*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login', 'Ingresar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.accountExpired', 'Cuenta de usuario ha expirado!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.accountLocked', 'Cuenta de usuario est� bloqueada!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.accountNotLocked', 'Cuenta de usuario est� desbloqueada!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.badCredentials', 'Nombre de usuario o contrase�a incorrectos!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.credentialsExpired', 'Credenciales de usuario han expirado!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.maxSessionsOut', 'Tiene una sesi�n activa! No puede crear otra!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.message', 'Por favor ingresar su nombre de usuario y contrase�a','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.username', 'Nombre de usuario','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.password', 'Contrase�a','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.forgot.password', 'Olvid� contrase�a?','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.userEnabled', 'Usuario esta activo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'login.userDisabled', 'Usuario esta inactivo!','0','0',0);


/*Menu*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'home', 'Inicio','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'dashboard', 'Panel de control','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'admin', 'Administraci�n','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'users', 'Usuarios','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'encuestadores', 'Encuestadores','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'supervisores', 'Supervisores','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'logout', 'Salir','0','0',0);

/*Usuarios*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'username', 'Usuario','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'userdesc', 'Descripci�n','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'useremail', 'Correo','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'userlock', 'Bloqueado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'usercred', 'Contrase�a vencida','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'userexp', 'Cuenta vencida','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'userroles', 'Roles','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'usersegments', 'Segmentos','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'user.updated', 'Usuario actualizado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'user.created', 'Usuario creado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'profile', 'Perfil','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'rolEnabled', 'Rol esta activo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'rolDisabled', 'Rol esta inactivo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'rolAdded', 'Rol agregado!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'rolAll', 'Todos los roles ya est�n agregados!','0','0',0);

/*Encuestadores/Supervisores*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'ident', 'Identificador �nico','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'codigo', 'C�digo asignado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'nombreEnc', 'Nombre del encuestador','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'nombreSup', 'Nombre del supervisor','0','0',0);

INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'encuestadorEnabled', 'Encuestador esta activo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'encuestadorDisabled', 'Encuestador esta inactivo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'supervisorEnabled', 'Supervisor esta activo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'supervisorDisabled', 'Supervisor esta inactivo!','0','0',0);

INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'segmentoEnabled', 'Segmento esta activo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'segmentoDisabled', 'Segmento esta inactivo!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'segmentoAdded', 'Segmento agregado!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'segmentoAll', 'Todos los segmentos ya est�n agregados!','0','0',0);

/*Accesos*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'access', 'Accesos de usuario','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'lastAccess', 'Ultimo acceso','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'dateCredentials', 'Ultimo cambio de contrasena','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'session', 'Id de sesion','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'ipaddress', 'Direccion IP','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'logindate', 'Fecha ingreso','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'logoutdate', 'Fecha salida','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'logouturl', 'URL salida','0','0',0);

/*Audit trail*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'audittrail', 'Bitacora de cambios','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'entityClass', 'Clase','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'entityName', 'Nombre','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'entityProperty', 'Propiedad','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'entityPropertyOldValue', 'Valor anterior','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'entityPropertyNewValue', 'Nuevo valor','0','0',0);

/*Roles*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'ROLE_ADMIN', 'Administrador','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'ROLE_SUPER', 'Supervisor','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'ROLE_WEB', 'Usuario web','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'ROLE_MOVIL', 'Usuario movil','0','0',0);

/*Metadata*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'createdBy', 'Creado por','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'dateCreated', 'Fecha creacion','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'modifiedBy', 'Modificado por','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'dateModified', 'Fecha de modificaci�n','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'active', 'Activo','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'addedBy', 'Agregado por','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'dateAdded', 'Fecha','0','0',0);

/*Acciones, todas las paginas*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'actions', 'Acciones','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'add', 'Agregar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'save', 'Guardar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'edit', 'Editar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'back', 'Regresar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'cancel', 'Cancelar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'choose', 'Elegir','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'change', 'Cambiar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'disable', 'Deshabilitar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'enable', 'Habilitar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'end', 'Finalizar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'unlock', 'Desbloquear','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'lock', 'Bloquear','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'export', 'Exportar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'ok', 'Aceptar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'search', 'Buscar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'confirm', 'Confirmar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'please.enter', 'Favor ingresar','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ('delete', 'Eliminar', '0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ('generate', 'Generar', '0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ('parameter', 'Par�metro', '0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ('language', 'Idioma/Language', '0','0',0);

/*Mensajes generales, todas las paginas*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'enabled', 'Habilitado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'locked', 'Bloqueado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'notenabled', 'Deshabilitado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'notlocked', 'Desbloqueado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'process.errors', 'Han ocurrido errores en el proceso!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'process.success', 'El proceso se ha completado exitosamente!','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'process.wait', 'Por favor espere..','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'noResults', 'No hay registros!','0','0',0);

/*Cambio contrasenia*/
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'changepass', 'Cambiar contrase�a..','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'credentials.expired', 'Su contrase�a ha caducado','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'pass.updated', 'Su contrase�a ha sido actualizada','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'password.repeat', 'Repita la contrase�a','0','0',0);
INSERT INTO `mensajes` (`messageKey`, `es`, `catPasive`, `isCat`, `orden`) VALUES ( 'Pattern.password.format', 'Al menos 8 caracteres combinando may�sculas, min�sculas, numeros y caracteres especiales','0','0',0);

/*Catalogos*/
/*Sexo*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SEXO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Sexo');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SEXO_M', '1', 'CAT_SEXO', NULL, '0', 1, '0', 'Hombre');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SEXO_F', '2', 'CAT_SEXO', NULL, '0', 2, '0', 'Mujer');

/*Agua*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Agua');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_1', '1', 'CAT_AGUA', NULL, '0', 1, '0', '1. Agua de paja  (dentro de la casa)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_2', '2', 'CAT_AGUA', NULL, '0', 2, '0', '2. Agua de paja en patio');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_3', '3', 'CAT_AGUA', NULL, '0', 3, '0', '3. Puesto p�blico (de paja)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_4', '4', 'CAT_AGUA', NULL, '0', 4, '0', '4. Pozo privado');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_5', '5', 'CAT_AGUA', NULL, '0', 5, '0', '5. R�o/ lago/ manantial');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_6', '6', 'CAT_AGUA', NULL, '0', 6, '0', '6. Agua de  lluvia');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_7', '7', 'CAT_AGUA', NULL, '0', 7, '0', '7. Compra particular, puesto, pipa o vecino');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_8', '8', 'CAT_AGUA', NULL, '0', 8, '0', '8. Pozo p�blico');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AGUA_9', '9', 'CAT_AGUA', NULL, '0', 9, '0', '9. Otro especifique');

/*Necesidades*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NECESIDADES', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Necesidades');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NECESIDADES_1', '1', 'CAT_NECESIDADES', NULL, '0',1, '0', '1. Inodoro');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NECESIDADES_2', '2', 'CAT_NECESIDADES', NULL, '0',2, '0', '2. Letrina');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NECESIDADES_3', '3', 'CAT_NECESIDADES', NULL, '0',3, '0', '3. Aire libre/ monte');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NECESIDADES_9', '9', 'CAT_NECESIDADES', NULL, '0',4, '0', '9. Otro especifique');

/*Cocinar*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_COCINA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Cocinar');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_COCINA_1', '1', 'CAT_COCINA', NULL, '0',1, '0', '1. Keros�n');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_COCINA_2', '2', 'CAT_COCINA', NULL, '0',2, '0', '2. Electricidad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_COCINA_3', '3', 'CAT_COCINA', NULL, '0',3, '0', '3. Tanque o cilindro de gas');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_COCINA_4', '4', 'CAT_COCINA', NULL, '0',4, '0', '4. Le�a');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_COCINA_5', '5', 'CAT_COCINA', NULL, '0',5, '0', '5. Carb�n');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_COCINA_9', '9', 'CAT_COCINA', NULL, '0',6, '0', '9. Otro especifique');

/*Articulos*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ARTICULOS', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Articulos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ARTICULOS_A', 'a', 'CAT_ARTICULOS', NULL, '0',1, '0', 'a.  Radio/ Equipo de sonido propio');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ARTICULOS_B', 'b', 'CAT_ARTICULOS', NULL, '0',2, '0', 'b. Televisi�n propia');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ARTICULOS_C', 'c', 'CAT_ARTICULOS', NULL, '0',3, '0', 'c. Refrigerador propio');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ARTICULOS_D', 'd', 'CAT_ARTICULOS', NULL, '0',4, '0', 'd. Veh�culo propio (carro/ moto/ panga)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ARTICULOS_E', 'e', 'CAT_ARTICULOS', NULL, '0',5, '0', 'e. Luz el�ctrica');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ARTICULOS_9', '9', 'CAT_ARTICULOS', NULL, '0',6, '0', '9. Otro especifique');

/*Si No*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINO_1','1','CAT_SINO',NULL,'0',1,'0','1. Si');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINO_2','2','CAT_SINO',NULL,'0',2,'0','2. No');

/*Si No*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINOL', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No Letra');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINO_SI','S','CAT_SINOL',NULL,'0',1,'0','Si');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINO_NO','N','CAT_SINOL',NULL,'0',2,'0','No');

/*Si No No Recuerda*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONR', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No No Recuerda');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONR_1','1','CAT_SINONR',NULL,'0',1,'0','1. Si');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONR_2','2','CAT_SINONR',NULL,'0',2,'0','2. No');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONR_8','8','CAT_SINONR',NULL,'0',3,'0','8. No Recuerda (NR/NS)');

/*nivel escolaridad*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NIVEL', NULL, NULL, NULL, '1', 0, '0', 'Catalogo nivel escolaridad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NIVEL_N','n','CAT_NIVEL',NULL,'0',1,'0','n). Ninguno (Alfabetizada)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NIVEL_P','p','CAT_NIVEL',NULL,'0',2,'0','p). Primaria');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NIVEL_S','s','CAT_NIVEL',NULL,'0',3,'0','s). Secundaria');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_NIVEL_U','u','CAT_NIVEL',NULL,'0',4,'0','u). Universidad');

/*GRADO escolaridad*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GRADO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo grado escolaridad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GRADO_1','1','CAT_GRADO',NULL,'0',1,'0','1');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GRADO_2','2','CAT_GRADO',NULL,'0',2,'0','2');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GRADO_3','3','CAT_GRADO',NULL,'0',3,'0','3');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GRADO_4','4','CAT_GRADO',NULL,'0',4,'0','4');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GRADO_5','5','CAT_GRADO',NULL,'0',5,'0','5');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GRADO_6','6','CAT_GRADO',NULL,'0',6,'0','6');

/*Entrevistado*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ENTREVISTADO', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Entrevistado');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ENTREVISTADO_1','1','CAT_ENTREVISTADO', NULL, '0',1, '0', '1. Madre');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ENTREVISTADO_2','2','CAT_ENTREVISTADO', NULL, '0',2, '0', '2. Cuidadora de 15-49 a�os.');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ENTREVISTADO_3','3','CAT_ENTREVISTADO', NULL, '0',3, '0', '3. Cuidadora de 50 a�os o m�s');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_ENTREVISTADO_4','4','CAT_ENTREVISTADO', NULL, '0',4, '0', '4. Cuidador incluyendo el padre');

/*HIERRO FRECUENCIA*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROFREC', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO FRECUENCIA');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROFREC_1','1','CAT_HIERROFREC',NULL,'0',1,'0','1. Una tableta diario');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROFREC_2','2','CAT_HIERROFREC',NULL,'0',2,'0','2. Una tableta semanal');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROFREC_3','3','CAT_HIERROFREC',NULL,'0',3,'0','3. Una tableta 2 veces semana');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROFREC_4','4','CAT_HIERROFREC',NULL,'0',4,'0','4. Dos tabletas una vez a la semana');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROFREC_9','9','CAT_HIERROFREC',NULL,'0',5,'0','9. Otro especifique');

/*HIERRO TIEMPO*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROTIEMP', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO TIEMPO');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROTIEMP_D','d','CAT_HIERROTIEMP',NULL,'0',1,'0','D�as');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROTIEMP_S','s','CAT_HIERROTIEMP',NULL,'0',2,'0','Semanas');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROTIEMP_M','m','CAT_HIERROTIEMP',NULL,'0',3,'0','Meses');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROTIEMP_N','n','CAT_HIERROTIEMP',NULL,'0',4,'0','No Sabe');

/*HIERRO OBTUVO*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO OBTUVO');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT_A','a','CAT_HIERROOBT',NULL,'0',1,'0','a. Puesto/Centro/Hospital (unidad de salud)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT_B','b','CAT_HIERROOBT',NULL,'0',2,'0','b. ONG/Privado (especifique)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT_C','c','CAT_HIERROOBT',NULL,'0',3,'0','c. Compradas (farmacia/mercado)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT_D','d','CAT_HIERROOBT',NULL,'0',4,'0','d. Brigadista/ comunidad/ partera');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT_E','e','CAT_HIERROOBT',NULL,'0',5,'0','e. Jornada Nacional de Vacunaci�n');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT_F','f','CAT_HIERROOBT',NULL,'0',6,'0','f. Otro especifique');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBT_G','g','CAT_HIERROOBT',NULL,'0',7,'0','g. La madre no recuerda');

/*Tiempo Vitamina A*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_VITA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Tiempo Vitamina A');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_VITA_1','1','CAT_VITA',NULL,'0',1,'0','1. En las primeras 4 semanas');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_VITA_2','2','CAT_VITA',NULL,'0',2,'0','2. M�s de 4 semanas');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_VITA_9','9','CAT_VITA',NULL,'0',3,'0','9. NS/NR');

/*Evita Embarazo*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Evita Embarazo');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_1','1','CAT_XEMB',NULL,'0',1,'0','1. Natural');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_2','2','CAT_XEMB',NULL,'0',2,'0','2. M�todo de amenorrea por lactancia (MELA)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_3','3','CAT_XEMB',NULL,'0',3,'0','3. Anticoncepci�n oral');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_4','4','CAT_XEMB',NULL,'0',4,'0','4. Anticoncepci�n inyectable mensual');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_5','5','CAT_XEMB',NULL,'0',5,'0','5. Anticoncepci�n inyectable trimestral');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_6','6','CAT_XEMB',NULL,'0',6,'0','6. T de Cobre o DIU');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_7','7','CAT_XEMB',NULL,'0',7,'0','7. Cond�n');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_8','8','CAT_XEMB',NULL,'0',8,'0','8. Quir�rgico');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_9','9','CAT_XEMB',NULL,'0',9,'0','9. No s�');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_XEMB_10','10','CAT_XEMB',NULL,'0',10,'0','10. No uso');

/*Obtiene anticonceptivos o condon*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DXEMB', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Obtiene anticonceptivos o condon');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DXEMB_1','1','CAT_DXEMB',NULL,'0',1,'0','1. Unidad de salud');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DXEMB_2','2','CAT_DXEMB',NULL,'0',2,'0','2. Ong�s');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DXEMB_3','3','CAT_DXEMB',NULL,'0',3,'0','3. Comprada (farmacia, mercado)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DXEMB_4','4','CAT_DXEMB',NULL,'0',4,'0','4. Brigadista/comunidad/partera');

/*Cantidad de alimentos*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CALIM', NULL, NULL, NULL, '1', 0, '0', 'Catalogo cantidad de alimentos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CALIM_1','1','CAT_CALIM',NULL,'0',1,'0','1) Menos de la primera grada (menos de 8 cucharadas)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CALIM_2','2','CAT_CALIM',NULL,'0',2,'0','2) Hasta la primera grada (8 cucharadas soperas)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CALIM_3','3','CAT_CALIM',NULL,'0',3,'0','3) Hasta la segunda gradas (12 cucharadas soperas)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CALIM_4','4','CAT_CALIM',NULL,'0',4,'0','4) Hasta la tercera gradas (16 cucharadas soperas)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CALIM_5','5','CAT_CALIM',NULL,'0',5,'0','5) De 1 � a 2 tazas (24 a 32 cucharadas soperas)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CALIM_6','6','CAT_CALIM',NULL,'0',6,'0','6) No le doy de comer a�n');

/*Consistencia de alimentos*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CONSALIM', NULL, NULL, NULL, '1', 0, '0', 'Catalogo consistencia de alimentos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CONSALIM_1','1','CAT_CONSALIM',NULL,'0',1,'0','1. L�quido o sopa rala');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CONSALIM_2','2','CAT_CONSALIM',NULL,'0',2,'0','2. L�quido o sopa Espesa/pur�/mogo');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CONSALIM_3','3','CAT_CONSALIM',NULL,'0',3,'0','3. Trocitos/pedacitos/desmenuzada');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_CONSALIM_4','4','CAT_CONSALIM',NULL,'0',4,'0','4. Normal � olla familiar');

/*Cantidad de alimentos enfermo*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AENF', NULL, NULL, NULL, '1', 0, '0', 'Catalogo cantidad de alimentos enfermo');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AENF_1','1','CAT_AENF',NULL,'0',1,'0','1. M�s cantidad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AENF_2','2','CAT_AENF',NULL,'0',2,'0','2. Menos cantidad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AENF_3','3','CAT_AENF',NULL,'0',3,'0','3. Igual cantidad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_AENF_4','4','CAT_AENF',NULL,'0',4,'0','4. Le suspende los alimentos');

/*Cantidad de leche enfermo*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_LENF', NULL, NULL, NULL, '1', 0, '0', 'Catalogo cantidad de leche enfermo');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_LENF_1','1','CAT_LENF',NULL,'0',1,'0','1. M�s cantidad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_LENF_2','2','CAT_LENF',NULL,'0',2,'0','2. Menos cantidad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_LENF_3','3','CAT_LENF',NULL,'0',3,'0','3. Igual cantidad');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_LENF_4','4','CAT_LENF',NULL,'0',4,'0','4. Le suspende la leche materna');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_LENF_5','5','CAT_LENF',NULL,'0',5,'0','5. Actualmente no toma pecho');

/*gotas de hierro*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GOTHIE', NULL, NULL, NULL, '1', 0, '0', 'Catalogo gotas de hierro');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GOTHIE_1','1','CAT_GOTHIE',NULL,'0',1,'0','1. 15 gotas al diario');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GOTHIE_2','2','CAT_GOTHIE',NULL,'0',2,'0','2. Menos de 15 gotas diario');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_GOTHIE_3','3','CAT_GOTHIE',NULL,'0',3,'0','3. M�s de 15 gotas diario');

/*HIERRO OBTUVO NINO*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBTNIN', NULL, NULL, NULL, '1', 0, '0', 'Catalogo HIERRO OBTUVO NINO');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBTNIN_A','a','CAT_HIERROOBTNIN',NULL,'0',1,'0','a. Puesto/Centro/Hospital (unidad de salud)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBTNIN_B','b','CAT_HIERROOBTNIN',NULL,'0',2,'0','b. ONG/Privado (especifique)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBTNIN_C','c','CAT_HIERROOBTNIN',NULL,'0',3,'0','c. Compradas (farmacia/mercado)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBTNIN_D','d','CAT_HIERROOBTNIN',NULL,'0',4,'0','d. Brigadista/ comunidad/ partera');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBTNIN_E','e','CAT_HIERROOBTNIN',NULL,'0',5,'0','e. Jornada Nacional de Vacunaci�n');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_HIERROOBTNIN_F','f','CAT_HIERROOBTNIN',NULL,'0',6,'0','f. Otro especifique');

/*Si No No Tiene*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONT', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No No Tiene');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONT_1','1','CAT_SINONT',NULL,'0',1,'0','1. Si');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONT_2','2','CAT_SINONT',NULL,'0',2,'0','2. No');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONT_3','3','CAT_SINONT',NULL,'0',3,'0','3. No Tiene');

/*Donde recibio vitamina A*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEA', NULL, NULL, NULL, '1', 0, '0', 'Donde recibio vitamina A');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEA_1','1','CAT_DONDEA',NULL,'0',1,'0','1. Jornada Nacional de Vacunacion');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEA_2','2','CAT_DONDEA',NULL,'0',2,'0','2. Unidad de Salud (Centro, puesto salud)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEA_3','3','CAT_DONDEA',NULL,'0',3,'0','3. Otro, especifique');

/*Donde obtuvo micronutritiente en polvo*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN', NULL, NULL, NULL, '1', 0, '0', 'Donde obtuvo micronutritiente en polvo');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN_A','a','CAT_DONDEMN',NULL,'0',1,'0','a) Programa AMOR. Centro /Puesto de Salud MINSA');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN_B','b','CAT_DONDEMN',NULL,'0',2,'0','b) Programa AMOR MIFAM');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN_C','c','CAT_DONDEMN',NULL,'0',3,'0','c) CDI MIFAM');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN_D','d','CAT_DONDEMN',NULL,'0',4,'0','d) Brigadista/Promotor de Salud');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN_E','e','CAT_DONDEMN',NULL,'0',5,'0','e) ONG (Organizaci�n no Gubernamental)');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN_F','f','CAT_DONDEMN',NULL,'0',6,'0','f) Otros');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONDEMN_G','g','CAT_DONDEMN',NULL,'0',7,'0','g) No recuerda');

/*medicamento contra parasitos*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_MEDPAR', NULL, NULL, NULL, '1', 0, '0', 'medicamento contra parasitos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_MEDPAR_A','a','CAT_MEDPAR',NULL,'0',1,'0','a. Albendazol');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_MEDPAR_B','b','CAT_MEDPAR',NULL,'0',2,'0','b. Mebendazol');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_MEDPAR_C','c','CAT_MEDPAR',NULL,'0',3,'0','c. Metronidazol');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_MEDPAR_D','d','CAT_MEDPAR',NULL,'0',4,'0','d. Otro, especifique');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_MEDPAR_E','e','CAT_MEDPAR',NULL,'0',5,'0','e. NS/NR');

/*donde medicamento contra parasitos*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONMEDPAR', NULL, NULL, NULL, '1', 0, '0', 'donde medicamento contra parasitos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONMEDPAR_A','a','CAT_DONMEDPAR',NULL,'0',1,'0','a) Hospital/ Centro/Puesto de Salud/Unidad de Salud MINSA');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONMEDPAR_B','b','CAT_DONMEDPAR',NULL,'0',2,'0','b) Jornada Nacional de Vacunaci�n. Hospital /Centro/Puesto de Salud MINSA');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONMEDPAR_C','c','CAT_DONMEDPAR',NULL,'0',3,'0','c) Brigadista/Promotor de Salud');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONMEDPAR_D','d','CAT_DONMEDPAR',NULL,'0',4,'0','d) ONG (Organizaci�n no Gubernamental): Cualquier programa/centro/puesto/cl�nica de salud perteneciente a cualquier ONG');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONMEDPAR_E','e','CAT_DONMEDPAR',NULL,'0',5,'0','e) Otros');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_DONMEDPAR_F','f','CAT_DONMEDPAR',NULL,'0',6,'0','f) No recuerda');

/*que hace para evitar parasitos*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR', NULL, NULL, NULL, '1', 0, '0', 'que hace para evitar parasitos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_A','a','CAT_EVITARPAR',NULL,'0',1,'0','a. Dar medicamentos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_B','b','CAT_EVITARPAR',NULL,'0',2,'0','b. Lavarse las manos con agua y jab�n');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_C','c','CAT_EVITARPAR',NULL,'0',3,'0','c. Mantener limpia la casa y sus alrededores');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_D','d','CAT_EVITARPAR',NULL,'0',4,'0','d. Mantener tapado los alimentos y el agua');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_E','e','CAT_EVITARPAR',NULL,'0',5,'0','e. Mantener a los ni�os/as con zapatos');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_F','f','CAT_EVITARPAR',NULL,'0',6,'0','f. Evitar el fecalismo al aire libre');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_G','g','CAT_EVITARPAR',NULL,'0',7,'0','g. Otro, especifique');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_EVITARPAR_H','h','CAT_EVITARPAR',NULL,'0',8,'0','h. NS/NR');

/*Si No No Aplica*/
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONA', NULL, NULL, NULL, '1', 0, '0', 'Catalogo Si No No Aplica');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONA_1','1','CAT_SINONA',NULL,'0',1,'0','1. Si');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONA_2','2','CAT_SINONA',NULL,'0',2,'0','2. No');
INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES ('CAT_SINONA_3','3','CAT_SINONA',NULL,'0',3,'0','3. No Aplica');

//INSERT INTO `mensajes` (`messageKey`, `catKey`, `catRoot`, `en`, `isCat`, `orden`, `catPasive`, `es`) VALUES (,'',,NULL,'0',,'0','');


