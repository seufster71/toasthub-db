
-- Forgot Password
INSERT INTO texts (default_text) VALUES ('Forgot Password Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Forgot Password Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de inscripción');
INSERT INTO page_name (name,text_id,category) VALUES ('FORGOTPASSWORD_FORM',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'FORGOTPASSWORD_FORM'),'FORGOTPASSWORD_FORM_USERNAME',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'FORGOTPASSWORD_FORM_USERNAME'),'','Username Or Email:','en',true,true,0,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'FORGOTPASSWORD_FORM_USERNAME'),'','Nombre de usuario:','es',true,true,0,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}',null);

-- Labels Forgot password
INSERT INTO texts (default_text) VALUES ('Submit Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Enviar - Botón');
INSERT INTO page_label_name (page_name_id,name,class_name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'FORGOTPASSWORD_FORM'),'FORGOTPASSWORD_FORM_SUBMIT_BUTTON','form-control btn btn-login',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'FORGOTPASSWORD_FORM_SUBMIT_BUTTON'),'Submit','en',true,0,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'FORGOTPASSWORD_FORM_SUBMIT_BUTTON'),'Enviar','es',true,0,null);

INSERT INTO texts (default_text) VALUES ('Forgot password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Forgot password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Se te olvidó tu contraseña');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'FORGOTPASSWORD_FORM'),'FORGOTPASSWORD_FORM_HEADER',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_FORM_HEADER'),'Forgot password','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_FORM_HEADER'),'Se te olvidó tu contraseña','es',true,null);

INSERT INTO texts (default_text) VALUES ('Forgot Password Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Forgot Password Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','¿Olvidó el servicio de contraseña?');
INSERT INTO page_name (name,text_id,category) VALUES ('FORGOTPASSWORD_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('User missing');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User missing');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Perdidos por el usuario');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_USERMISSING',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_USERMISSING'),'The user you provided does not exist.','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_USERMISSING'),'El usuario que proporcionaste no existe.','es',true,null);

INSERT INTO texts (default_text) VALUES ('Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Exitoso');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_SUCCESSFUL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_SUCCESSFUL'),'Password reset successful, Check email for new password.','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_SUCCESSFUL'),'Password reset successful, Chequee el correo electrónico de la nueva contraseña.','es',true,null);

INSERT INTO texts (default_text) VALUES ('Password Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error en la contraseña');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_PASSWORD_FAIL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_PASSWORD_FAIL'),'Password reset FAILED! Try again','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_PASSWORD_FAIL'),'Restablecimiento de contraseña FALLA! Inténtalo de nuevo','es',true,null);

INSERT INTO texts (default_text) VALUES ('General Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','General Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','General Fail');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'FORGOTPASSWORD_SERVICE'),'FORGOTPASSWORD_SERVICE_FAIL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_FAIL'),'Forgot password Failed','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'FORGOTPASSWORD_SERVICE_FAIL'),'¿Olvidó su contraseña?','es',true,null);
