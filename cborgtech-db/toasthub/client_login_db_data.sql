
-- PageName  Login
INSERT INTO texts (default_text) VALUES ('Login Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Login Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de acceso');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'LOGIN_PAGE',@lastid,'PUBLIC');

-- Form Field  Login
INSERT INTO texts (default_text) VALUES ('User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,tab_index,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_USERNAME',@lastid,'TXT',1,'text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'LOGIN_FORM_USERNAME'),'','User name:','en',true,true,0,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'LOGIN_FORM_USERNAME'),'','Nombre de usuario:','es',true,true,0,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,tab_index,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_PASSWORD',@lastid,'TXT',2,'password',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"password","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'LOGIN_FORM_PASSWORD'),'','Password:','en',true,true,1,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","validationString":"1 Lower 1 Upper 1 Number 1 Special Min 7 Max 30","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'LOGIN_FORM_PASSWORD'),'','Contraseña:','es',true,true,1,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","validationString":"1 Lower 1 Upper 1 Number 1 Special Min 7 Max 30","errorMsg":"Error de validacion"}');

-- Labels Login
INSERT INTO texts (default_text) VALUES ('Log in - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Log in - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Iniciar sesión - Botón');
INSERT INTO pref_label_name (pref_name_id,name,class_name,tab_index,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_SUBMIT_BUTTON','form-control btn btn-login',4,@lastid);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'LOGIN_FORM_SUBMIT_BUTTON'),'Log in','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'LOGIN_FORM_SUBMIT_BUTTON'),' Iniciar sesión','es',true,0);

-- Texts Login
INSERT INTO texts (default_text) VALUES ('Login Header label');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Login Header label');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perdidos por el usuario');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_HEADER'),'Login','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_HEADER'),'Login','es',true);

INSERT INTO texts (default_text) VALUES ('Remember Me');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Remember Me');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Recuérdame');
INSERT INTO pref_text_name (pref_name_id,name,tab_index,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_REMEMBER_ME',3,@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_REMEMBER_ME'),'Remember Me','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_REMEMBER_ME'),'Recuérdame','es',true);

INSERT INTO texts (default_text) VALUES ('Forgot Password?');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Forgot Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Se te olvidó tu contraseña');
INSERT INTO pref_text_name (pref_name_id,name,tab_index,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_FORGOT_PASSWORD',5,@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_FORGOT_PASSWORD'),'Forgot Password?','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_FORGOT_PASSWORD'),'Se te olvidó tu contraseña','es',true);

INSERT INTO texts (default_text) VALUES ('Change Password?');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Change Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Se te olvidó tu contraseña');
INSERT INTO pref_text_name (pref_name_id,name,tab_index,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_CHANGE_PASSWORD',6,@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_CHANGE_PASSWORD'),'Change Password?','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_CHANGE_PASSWORD'),'Se te olvidó tu contraseña','es',true);

INSERT INTO texts (default_text) VALUES ('User missing');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User missing');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perdidos por el usuario');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_PAGE'),'LOGIN_FORM_USERMISSING',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_USERMISSING'),'The user name you provided is not registered','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_FORM_USERMISSING'),'El nombre de usuario que ha proporcionado no está registrado','es',true);

INSERT INTO texts (default_text) VALUES ('Login Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Login Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio de Inicio de Sesión');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'LOGIN_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Bad username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Bad username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario incorrecto');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_SERVICE'),'LOGIN_SERVICE_BADUSERNAME',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_SERVICE_BADUSERNAME'),'The username you provided does not exist','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_SERVICE_BADUSERNAME'),'El nombre de usuario que proporcionaste no existe','es',true);

INSERT INTO texts (default_text) VALUES ('Bad password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Bad password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de enviar');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_SERVICE'),'LOGIN_SERVICE_BADPASSWORD',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_SERVICE_BADPASSWORD'),'Your password is incorrect','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_SERVICE_BADPASSWORD'),'Su contraseña es incorrecta','es',true);

INSERT INTO texts (default_text) VALUES ('Check email confirm');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Check email confirm');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Verificar correo electrónico confirmar');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'LOGIN_SERVICE'),'LOGIN_SERVICE_CHECK_EMAIL_CONFIRM',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_SERVICE_CHECK_EMAIL_CONFIRM'),'Check the email you received from cborgdev@gmail.com and confirm registration','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'LOGIN_SERVICE_CHECK_EMAIL_CONFIRM'),'Compruebe el correo electrónico que recibió de cborgdev@gmail.com y confirme su registro','es',true);
