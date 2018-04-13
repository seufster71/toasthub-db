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
-- member container
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
INSERT INTO texts (default_text) VALUES ('Admin Bugs');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Bugs');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Errores de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('AB',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));
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
INSERT INTO texts (default_text) VALUES ('Admin System');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin System');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Sistema de administración');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ASYS',@lastid,'W',(SELECT id FROM application WHERE code = 'APP_RAPID'));


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

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MEMAREA'),'R' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MD'),'R' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MA'),'R' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MG'),'R' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MS'),'D' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MN'),'R' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MSM'),'R' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MP'),'R' FROM role WHERE code = 'M';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ML'),'R' FROM role WHERE code = 'M';

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ADMAREA'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AD'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AB'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ACR'),'D' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AUM'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AU'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AR'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AP'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APR'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRP'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRM'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'APRA'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ASM'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AL'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AC'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AS'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ASVR'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'AM'),'W' FROM role WHERE code = 'A';
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ASYS'),'W' FROM role WHERE code = 'A';

-- Base users
INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('cborgadmin','tpOdfWGybw5Kwp1Xoym3YxLhCKk=','LrS8Hv/zqFw=','admin','admin','admin',33544,'guru@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='A'),1 FROM users WHERE username='cborgadmin';
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M'),2 FROM users WHERE username='cborgadmin';

INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('cborgmember','tpOdfWGybw5Kwp1Xoym3YxLhCKk=','LrS8Hv/zqFw=','member','member','member',33544,'member@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id) SELECT id,(SELECT id FROM role WHERE code='M') FROM users WHERE username='cborgmember';