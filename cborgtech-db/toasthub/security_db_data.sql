-- applications
INSERT INTO texts (default_text) VALUES ('RapidApp');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','RapidApp');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','RapidApp');
INSERT INTO application (code,title_id,created) VALUES ('APP_RAPIDAPP',@lastid,null);

INSERT INTO texts (default_text) VALUES ('Bugdog');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Bugdog');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Bugdog');
INSERT INTO application (code,title_id,created) VALUES ('APP_BUGDOG',@lastid,null);

-- permissions
INSERT INTO texts (default_text) VALUES ('Access Member Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Member Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceder al área de miembros');
INSERT INTO permission (code,title_id,can_read,can_write,application_id,created) VALUES ('PRM_MEMBER_AREA',@lastid,true,true,(SELECT id FROM application WHERE code = 'APP_RAPIDAPP'),null);

INSERT INTO texts (default_text) VALUES ('Access Admin Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Admin Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceso al área de administración');
INSERT INTO permission (code,title_id,can_read,can_write,application_id,created) VALUES ('PRM_ADMIN_AREA',@lastid,true,true,(SELECT id FROM application WHERE code = 'APP_RAPIDAPP'),null);

-- role
INSERT INTO texts (default_text) VALUES ('Member');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Miembro');
INSERT INTO role (code,title_id,application_id,created) VALUES ('ROLE_MEMBER',@lastid,(SELECT id FROM application WHERE code = 'APP_RAPIDAPP'),null);

INSERT INTO texts (default_text) VALUES ('Admin');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Administración');
INSERT INTO role (code,title_id,application_id,created) VALUES ('ROLE_ADMIN',@lastid,(SELECT id FROM application WHERE code = 'APP_RAPIDAPP'),null);

INSERT INTO role_permission (role_id,permission_id) SELECT id,(SELECT id FROM permission WHERE code = 'PRM_MEMBER_AREA') AS permissionid FROM role WHERE code = 'ROLE_MEMBER';
INSERT INTO role_permission (role_id,permission_id) SELECT id,(SELECT id FROM permission WHERE code = 'PRM_ADMIN_AREA') AS permissionid FROM role WHERE code = 'ROLE_ADMIN';

-- Base users
INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang,created) VALUES ('cborgadmin','tpOdfWGybw5Kwp1Xoym3YxLhCKk=','LrS8Hv/zqFw=','admin','admin','admin',33544,'guru@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en',null);
INSERT INTO user_role (user_id,role_id) SELECT id,(SELECT id FROM role WHERE code='ROLE_ADMIN') FROM users WHERE username='cborgadmin';
INSERT INTO user_role (user_id,role_id) SELECT id,(SELECT id FROM role WHERE code='ROLE_MEMBER') FROM users WHERE username='cborgadmin';

INSERT INTO users (username,password,salt,firstname,middlename,lastname,zipcode,email,session_token,email_token,email_confirm,is_active,lang,created) VALUES ('cborgmember','tpOdfWGybw5Kwp1Xoym3YxLhCKk=','LrS8Hv/zqFw=','admin','admin','admin',33544,'member@cborgtech.com','QcyiKaCZipA=','PUaxya0BS+00',1,1,'en',null);
INSERT INTO user_role (user_id,role_id) SELECT id,(SELECT id FROM role WHERE code='ROLE_MEMBER') FROM users WHERE username='cborgmember';
