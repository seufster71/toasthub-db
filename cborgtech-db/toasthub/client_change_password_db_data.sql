
-- PageName Password Change
INSERT INTO texts (default_text) VALUES ('Password change Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password change Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de cambio de contraseña');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PASSWORD_CHANGE_FORM',@lastid,'PUBLIC');

-- Form Field Password Change
INSERT INTO texts (default_text) VALUES ('User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,tab_index,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_FORM'),'PASSWORD_CHANGE_FORM_USERNAME',@lastid,'TXT',1,'text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_USERNAME'),'','User name:','en',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_USERNAME'),'','Nombre de usuario:','es',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Old Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Old Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Old Contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,tab_index,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_FORM'),'PASSWORD_CHANGE_FORM_OLD_PASSWORD',@lastid,'TXT',2,'password',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"oldpassword","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_OLD_PASSWORD'),'','Old Password:','en',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_OLD_PASSWORD'),'','Old Contraseña:','es',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Clave');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,tab_index,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_FORM'),'PASSWORD_CHANGE_FORM_PASSWORD',@lastid,'TXT',3,'password',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"password","type":"String"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_PASSWORD'),'','Password:','en',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_PASSWORD'),'','Contraseña:','es',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Validation Error"}');

INSERT INTO texts (default_text) VALUES ('Verify Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Verify Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Verificar contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,tab_index,html_type,row_count,column_count,class_name,group_name,sub_group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_FORM'),'PASSWORD_CHANGE_FORM_VERIFYPASSWORD',@lastid,'TXT',4,'password',2,25,null,'FORM1',null,'{"matchItem":"PASSWORD_CHANGE_FORM_PASSWORD"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_VERIFYPASSWORD'),'','Verify Password:','en',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PASSWORD_CHANGE_FORM_VERIFYPASSWORD'),'','Verifique su contraseña:','es',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Validation Error"}');


INSERT INTO texts (default_text) VALUES ('Password change Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password change Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de cambio de contraseña');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PASSWORD_CHANGE_PAGE',@lastid,'PUBLIC');

-- Texts Password Change
INSERT INTO texts (default_text) VALUES ('Submit - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de enviar');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_PAGE'),'PASSWORD_CHANGE_FORM_SUBMIT',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_FORM_SUBMIT'),'Submit','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_FORM_SUBMIT'),'Presentar','es',true);

-- Password Change Service
INSERT INTO texts (default_text) VALUES ('Password change Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password change Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cambio de contraseña Servicio');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PASSWORD_CHANGE_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Email Verify');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email Verify');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Correo electrónico Confirme');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_SERVICE'),'PASSWORD_CHANGE_SERVICE_EMAIL_VERIFY',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_EMAIL_VERIFY'),'Your password was change if this was unexpected Please summit a security exception ticket!','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_EMAIL_VERIFY'),'Su contraseña cambió si esto fue inesperado Por favor cumbre un ticket de excepción de seguridad!','es',true);

INSERT INTO texts (default_text) VALUES ('User missing');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User missing');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perdidos por el usuario');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_SERVICE'),'PASSWORD_CHANGE_SERVICE_USERMISSING',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_USERMISSING'),'User does not exist! Try again','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_USERMISSING'),'¡El usuario no existe! Inténtalo de nuevo','es',true);

INSERT INTO texts (default_text) VALUES ('Password change successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password change successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cambio de contraseña satisfactorio');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_SERVICE'),'PASSWORD_CHANGE_SERVICE_SUCCESSFUL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_SUCCESSFUL'),'Your password has been successfully changed.','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_SUCCESSFUL'),'Su contraseña ha sido cambiada exitosamente.','es',true);

INSERT INTO texts (default_text) VALUES ('Old password incorrect');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Old password incorrect');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Contraseña antigua incorrecta');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_SERVICE'),'PASSWORD_CHANGE_SERVICE_OLDPASS_INCORRECT',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_OLDPASS_INCORRECT'),'Old/Temparary Password is incorrect! Try again','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_OLDPASS_INCORRECT'),'Contraseña antigua / Temparary es incorrecta! Inténtalo de nuevo','es',true);

INSERT INTO texts (default_text) VALUES ('Password change failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password change failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cambio de contraseña falló');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_SERVICE'),'PASSWORD_CHANGE_SERVICE_PASSCHANGE_FAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_PASSCHANGE_FAIL'),'Password change FAILED! Try again','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_PASSCHANGE_FAIL'),'¡Cambio de contraseña falló! Inténtalo de nuevo','es',true);

INSERT INTO texts (default_text) VALUES ('User or Password empty');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User or Password empty');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Usuario o Contraseña vacío');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PASSWORD_CHANGE_SERVICE'),'PASSWORD_CHANGE_SERVICE_USER_PASS_EMPTY',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_USER_PASS_EMPTY'),'Username or password can not be empty! Try again','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PASSWORD_CHANGE_SERVICE_USER_PASS_EMPTY'),'¡El nombre de usuario o la contraseña no pueden estar vacíos! Inténtalo de nuevo','es',true);

