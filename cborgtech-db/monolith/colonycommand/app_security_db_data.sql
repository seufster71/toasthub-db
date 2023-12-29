
-- APP_RAPID
-- applications
INSERT INTO texts (default_text) VALUES ('RapidApp');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','RapidApp');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','RapidApp');
INSERT INTO application (code,title_id) VALUES ('APP_RAPID',@lastid);

-- permissions
INSERT INTO texts (default_text) VALUES ('Access Member Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Member Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceder al área de miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MEMAREA',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));

-- member
INSERT INTO texts (default_text) VALUES ('Member Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tablero de miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MD',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('Member Acquaintance');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Acquaintance');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Conocido por el miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MA',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));

-- Project management app
INSERT INTO texts (default_text) VALUES ('PM Gate Dog');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Gate Dog');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Gate Dog');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Team');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Team');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Equipo');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMTEAM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Product');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Product');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Producto');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMPROD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Project');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Project');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Proyecto');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMPROJ',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Release');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Release');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Lanzamiento');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMREL',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Backlog');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Backlog');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Reserva');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMBAK',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Scrum');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Scrum');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Scrum');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMSCR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Defect');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Defect');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Defecto');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMDEF',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Enhancement');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Enhancement');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Mejora');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMENH',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Task');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Task');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Tarea');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMTASK',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Workflow');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Workflow');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM Flujo de trabajo');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMWF',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Workflow Step');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Workflow Step');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paso de flujo de trabajo de PM');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMWFS',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('PM Deploy');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PM Deploy');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PM implementar');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MPMDEP',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

-- Colony Command
INSERT INTO texts (default_text) VALUES ('CC Colony Command');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','CC Colony Command');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','CC Comando de colonia');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MCC',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('CC Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','CC Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','CC Panel');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MCCD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('CC Organization');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','CC Organization');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','CC Organización');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MCCO',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('CC Hive');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','CC Hive');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','CC Colmena');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MCCH',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('CC Hive Sensor');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','CC Hive Sensor');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','CC sensor de colmena');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MCCHS',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

-- Ecommerce
INSERT INTO texts (default_text) VALUES ('EC Shop');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','EC Shop');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','EC Shop');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MEC',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('EC Market');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','EC Market');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','EC Market');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MECMARKET',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('EC Store');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','EC Store');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','EC Store');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MECSTORE',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('EC My Store Inventory');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','EC My Store Inventory');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','EC My Store Inventory');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MECMYSTOREINVENTORY',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('EC My Store Orders');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','EC My Store Orders');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','EC My Store Orders');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MECMYSTOREORDERS',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('EC My Store Receipts');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','EC My Store Receipts');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','EC My Store Receipts');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MECMYSTORERECEIPTS',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('EC My Store Employees');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','EC My Store Employees');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','EC My Store Employees');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MECMYSTOREEMPLOYEES',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));


-- member area
INSERT INTO texts (default_text) VALUES ('Member Groups');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Groups');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Grupos de miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MG',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('Member Shop');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Shop');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tienda para miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MS',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Member Menu Top Notes');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Notes');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Notas miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MN',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Member Submenu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Submenu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Submenú miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MSM',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Member Profile');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Profile');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perfil de miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MP',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Member Logout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Logout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cierre de sesión de miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ML',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));


-- Admin
INSERT INTO texts (default_text) VALUES ('Access Admin Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Admin Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceso al área de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ADMAREA',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));
-- admin menus
INSERT INTO texts (default_text) VALUES ('Admin Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tablero de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('Admin Change Requests');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Change Request');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitud de cambio de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ACR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin User Management');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin User Management');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Administración de usuarios de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AUM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Users');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Users');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Usuarios administradores');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AU',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Roles');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Roles');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Roles de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Permissions');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Permissions');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permisos de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AP',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Preferencias de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences Public');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences Public');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Preferencias del administrador público');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APRP',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences Member');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences Member');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Miembro de preferencias de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APRM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences Admin');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences Admin');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Admin Preferencias Admin');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APRA',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('Admin Submenu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Submenu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Submenú Admin');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ASM',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma del administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AL',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AC',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AS',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ASVR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Menu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Menu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú Admin');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

-- Ecommerce
INSERT INTO texts (default_text) VALUES ('Admin Ecommerce Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Ecommerce Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Área de comercio electrónico de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AEC',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Ecommerce Market');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Ecommerce Market');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Administrador del mercado de comercio electrónico');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AECMARKET',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('Admin Ecommerce Store');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Ecommerce Store');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Administrador de tienda de comercio electrónico');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AECSTORE',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));


-- System
INSERT INTO texts (default_text) VALUES ('Access System Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access System Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceso al área del sistema');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SYSAREA',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('System Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tablero de System');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('System Submenu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Submenu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Submenú System');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SSM',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('System Service Crawler');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Service Crawler');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Sistema de orugas de servicio');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SSC',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('System Client Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Client Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio del cliente del sistema');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SCD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
INSERT INTO texts (default_text) VALUES ('System Application');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Application');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio del Application');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SA',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));

-- role
INSERT INTO texts (default_text) VALUES ('Member');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Miembro');
INSERT INTO role (code,title_id,application_id) VALUES ('M',@lastid,(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('Admin');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Administración');
INSERT INTO role (code,title_id,application_id) VALUES ('A',@lastid,(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO texts (default_text) VALUES ('System');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','System Administración');
INSERT INTO role (code,title_id,application_id) VALUES ('S',@lastid,(SELECT id FROM application WHERE code = 'APP_RAPID'));

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MEMAREA' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MD' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MA' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MG' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'D' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MS' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MN' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MSM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MP' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ML' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMTEAM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMPROD' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMPROJ' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMREL' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMBAK' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMDEF' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMENH' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMTASK' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMWF' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMWFS' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMSCR' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MPMDEP' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MCC' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MCCD' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MCCO' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MCCH' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MCCHS' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MEC' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MECMARKET' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MECSTORE' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MECMYSTOREINVENTORY' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MECMYSTOREORDERS' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MECMYSTORERECEIPTS' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MECMYSTOREEMPLOYEES' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ADMAREA' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AD' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ACR' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'D' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AUM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AU' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AR' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AP' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APR' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRP' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRA' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ASM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AL' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AC' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AS' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ASVR' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AEC' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AECMARKET' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AECSTORE' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SYSAREA' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SD' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SSM' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SSC' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SCD' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SA' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID');

-- APP_BUGDOG
-- applications
INSERT INTO texts (default_text) VALUES ('BugdogApp');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','BugdogApp');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','BugdogApp');
INSERT INTO application (code,title_id) VALUES ('APP_BUGDOG',@lastid);

-- permissions
INSERT INTO texts (default_text) VALUES ('Access Member Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Member Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceder al área de miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MEMAREA',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
-- member container
INSERT INTO texts (default_text) VALUES ('Member Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tablero de miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MD',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Member Acquaintance');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Acquaintance');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Conocido por el miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MA',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Member Tickets');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Tickets');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Boletos para miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MT',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Member Submenu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Submenu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Submenú miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MSM',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Member Profile');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Profile');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perfil de miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MP',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Member Logout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Logout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cierre de sesión de miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ML',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Access Admin Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Admin Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceso al área de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ADMAREA',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
-- admin menus
INSERT INTO texts (default_text) VALUES ('Admin Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tablero de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Admin Bugs');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Bugs');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Errores de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AB',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Admin Bugs Lanes');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Bugs Lanes');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Admin Bugs Lanes');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ABLA',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Admin Bugs List');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Bug List');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Lista de errores del administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ABLI',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Admin Change Requests');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Change Request');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitud de cambio de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ACR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Admin User Management');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin User Management');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Administración de usuarios de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AUM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Users');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Users');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Usuarios administradores');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AU',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Roles');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Roles');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Roles de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Permissions');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Permissions');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permisos de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AP',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Preferencias de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences Public');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences Public');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Preferencias del administrador público');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APRP',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences Member');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences Member');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Miembro de preferencias de administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APRM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Preferences Admin');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferences Admin');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Admin Preferencias Admin');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('APRA',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Admin Submenu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Submenu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Submenú Admin');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ASM',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma del administrador');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AL',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AC',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AS',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ASVR',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('Admin Menu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Menu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú Admin');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AM',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

-- System
INSERT INTO texts (default_text) VALUES ('Access System Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access System Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceso al área del sistema');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SYSAREA',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('System Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tablero de System');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('System Submenu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Submenu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Submenú System');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SSM',@lastid,'R',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('System Service Crawler');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Service Crawler');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Sistema de orugas de servicio');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SSC',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('System Client Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Client Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio del cliente del sistema');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SCD',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));
INSERT INTO texts (default_text) VALUES ('System Application');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Application');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio del Application');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('SA',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_BUGDOG'));


-- role
INSERT INTO texts (default_text) VALUES ('Member');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Miembro');
INSERT INTO role (code,title_id,application_id) VALUES ('M',@lastid,(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('Admin');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Administración');
INSERT INTO role (code,title_id,application_id) VALUES ('A',@lastid,(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO texts (default_text) VALUES ('System');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','System Administración');
INSERT INTO role (code,title_id,application_id) VALUES ('S',@lastid,(SELECT id FROM application WHERE code = 'APP_BUGDOG'));

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MEMAREA' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MD' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MA' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MT' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MSM' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MP' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ML' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ADMAREA' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AD' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AB' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ABLA' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ABLI' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ACR' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'D' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AUM' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AU' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AR' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AP' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APR' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRP' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRM' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRA' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ASM' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AL' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AC' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AS' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ASVR' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AM' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SYSAREA' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SD' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SSM' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SSC' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SCD' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'SA' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),'W' FROM role WHERE code = 'S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG');

-- Base users
-- Run88Fast#
INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('toasthubsystem','$2a$04$lfgRCoRLlMDY0MrUN0T4VOUHCIwH1DyePvnyQzq4X2L3CiFDQJEZG','LrS8Hv/zqFw=','Toasthub','','System',33544,'system@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),1 FROM users WHERE username='toasthubsystem';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),2 FROM users WHERE username='toasthubsystem';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),3 FROM users WHERE username='toasthubsystem';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),1 FROM users WHERE username='toasthubsystem';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),2 FROM users WHERE username='toasthubsystem';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),3 FROM users WHERE username='toasthubsystem';

INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('toasthubadmin','$2a$04$lfgRCoRLlMDY0MrUN0T4VOUHCIwH1DyePvnyQzq4X2L3CiFDQJEZG','LrS8Hv/zqFw=','Toasthub','','Admin',33544,'guru@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='S' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),1 FROM users WHERE username='toasthubadmin';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='A' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),2 FROM users WHERE username='toasthubadmin';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),3 FROM users WHERE username='toasthubadmin';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='S' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),1 FROM users WHERE username='toasthubadmin';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='A' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),2 FROM users WHERE username='toasthubadmin';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),3 FROM users WHERE username='toasthubadmin';

INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('toasthubmember','$2a$04$lfgRCoRLlMDY0MrUN0T4VOUHCIwH1DyePvnyQzq4X2L3CiFDQJEZG','LrS8Hv/zqFw=','Toasthub','','Member',33544,'member@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),1 FROM users WHERE username='toasthubmember';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),1 FROM users WHERE username='toasthubmember';

INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('toasthubmember2','$2a$04$lfgRCoRLlMDY0MrUN0T4VOUHCIwH1DyePvnyQzq4X2L3CiFDQJEZG','LrS8Hv/zqFw=','Toasthub','','Member2',33544,'member2@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),1 FROM users WHERE username='toasthubmember2';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),1 FROM users WHERE username='toasthubmember2';

INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('toasthubtester','$2a$04$lfgRCoRLlMDY0MrUN0T4VOUHCIwH1DyePvnyQzq4X2L3CiFDQJEZG','LrS8Hv/zqFw=','Toasthub','','Tester',33544,'tester@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),1 FROM users WHERE username='toasthubtester';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),1 FROM users WHERE username='toasthubtester';

INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('toasthubviewer','$2a$04$lfgRCoRLlMDY0MrUN0T4VOUHCIwH1DyePvnyQzq4X2L3CiFDQJEZG','LrS8Hv/zqFw=','Toasthub','','Viewer',33544,'viewer@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_RAPID')),1 FROM users WHERE username='toasthubviewer';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'APP_BUGDOG')),1 FROM users WHERE username='toasthubviewer';
