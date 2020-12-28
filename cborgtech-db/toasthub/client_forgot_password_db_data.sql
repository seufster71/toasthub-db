
-- Forgot Password
INSERT INTO texts (default_text) VALUES ('Forgot Password Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Forgot Password Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Olvidé mi página de contraseña');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'FORGOTPASSWORD_FORM',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'FORGOTPASSWORD_FORM'),'FORGOTPASSWORD_FORM_USERNAME',@lastid,'TXT','text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'FORGOTPASSWORD_FORM_USERNAME'),'','Username Or Email:','en',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'FORGOTPASSWORD_FORM_USERNAME'),'','Nombre de usuario:','es',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}');

-- Labels Forgot password
INSERT INTO texts (default_text) VALUES ('Submit Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Enviar - Botón');
INSERT INTO pref_label_name (pref_name_id,name,class_name,text_id,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'FORGOTPASSWORD_FORM'),'FORGOTPASSWORD_FORM_SUBMIT_BUTTON','form-control btn btn-login',@lastid,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'FORGOTPASSWORD_FORM_SUBMIT_BUTTON'),'Submit','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'FORGOTPASSWORD_FORM_SUBMIT_BUTTON'),'Enviar','es',true);

INSERT INTO texts (default_text) VALUES ('Forgot password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Forgot password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Se te olvidó tu contraseña');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'FORGOTPASSWORD_FORM'),'FORGOTPASSWORD_FORM_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_FORM_HEADER'),'Forgot password','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_FORM_HEADER'),'Se te olvidó tu contraseña','es',true);

INSERT INTO texts (default_text) VALUES ('Forgot Password Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Forgot Password Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','¿Olvidó el servicio de contraseña?');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'FORGOTPASSWORD_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('User missing');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User missing');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perdidos por el usuario');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_USERMISSING',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_USERMISSING'),'The user you provided does not exist.','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_USERMISSING'),'El usuario que proporcionaste no existe.','es',true);

INSERT INTO texts (default_text) VALUES ('Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Exitoso');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_SUCCESSFUL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_SUCCESSFUL'),'Password reset successful, Check email for new password.','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_SUCCESSFUL'),'Password reset successful, Chequee el correo electrónico de la nueva contraseña.','es',true);

INSERT INTO texts (default_text) VALUES ('Password Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error en la contraseña');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_PASSWORD_FAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_PASSWORD_FAIL'),'Password reset FAILED! Try again','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_PASSWORD_FAIL'),'Restablecimiento de contraseña FALLA! Inténtalo de nuevo','es',true);

INSERT INTO texts (default_text) VALUES ('General Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','General Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','General Fail');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_FAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_FAIL'),'Forgot password Failed','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_FAIL'),'¿Olvidó su contraseña?','es',true);
