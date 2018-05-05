
-- APP_RAPID
-- applications
INSERT INTO texts (default_text) VALUES ('PiDragon');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','PiDragon');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','PiDragon');
INSERT INTO application (code,title_id) VALUES ('PIDRAGON',@lastid);

-- permissions
INSERT INTO texts (default_text) VALUES ('Access Member Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Member Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceder al área de miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MEMAREA',@lastid,'R',(SELECT id FROM application WHERE code = 'PIDRAGON'));
-- member
INSERT INTO texts (default_text) VALUES ('Member Dashboard');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Dashboard');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tablero de miembros');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MD',@lastid,'R',(SELECT id FROM application WHERE code = 'PIDRAGON'));

INSERT INTO texts (default_text) VALUES ('Member Servers');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Servers');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Grupos de servers');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MS',@lastid,'R',(SELECT id FROM application WHERE code = 'PIDRAGON'));

INSERT INTO texts (default_text) VALUES ('Member Submenu');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Submenu');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Submenú miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MSM',@lastid,'R',(SELECT id FROM application WHERE code = 'PIDRAGON'));
INSERT INTO texts (default_text) VALUES ('Member Profile');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Profile');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perfil de miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('MP',@lastid,'R',(SELECT id FROM application WHERE code = 'PIDRAGON'));
INSERT INTO texts (default_text) VALUES ('Member Logout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Logout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cierre de sesión de miembro');
INSERT INTO permission (code,title_id,rights,application_id) VALUES ('ML',@lastid,'R',(SELECT id FROM application WHERE code = 'PIDRAGON'));

-- role
INSERT INTO texts (default_text) VALUES ('Member');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Miembro');
INSERT INTO role (code,title_id,application_id) VALUES ('M',@lastid,(SELECT id FROM application WHERE code = 'PIDRAGON'));

INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MEMAREA' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MD' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MA' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDGRAON');INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MG' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'D' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MS' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MN' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MSM' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'MP' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'W' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');
INSERT INTO role_permission (role_id,permission_id,rights) SELECT id,(SELECT id FROM permission WHERE code = 'ML' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),'R' FROM role WHERE code = 'M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON');

-- Base users
INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang) VALUES ('pidragon','tpOdfWGybw5Kwp1Xoym3YxLhCKk=','LrS8Hv/zqFw=','member','member','member',33544,'pidragon@pidragon.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en');
INSERT INTO user_role (user_id,role_id,sort_order) SELECT id,(SELECT id FROM role WHERE code='M' AND application_id = (SELECT id FROM application WHERE code = 'PIDRAGON')),1 FROM users WHERE username='pidragon';
