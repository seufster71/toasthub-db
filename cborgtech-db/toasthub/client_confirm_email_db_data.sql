
-- Confirm email
INSERT INTO texts (default_text) VALUES ('Confirm email service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Confirm email service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Confirmar formulario de correo electrónico');
INSERT INTO page_name (name,text_id,category) VALUES ('CONFIRM_EMAIL_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'CONFIRM_EMAIL_SERVICE'),'CONFIRM_EMAIL_SERVICE_USERNAME',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'CONFIRM_EMAIL_SERVICE_USERNAME'),'','Username Or Email:','en',true,true,0,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'CONFIRM_EMAIL_SERVICE_USERNAME'),'','Nombre de usuario:','es',true,true,0,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}',null);

INSERT INTO texts (default_text) VALUES ('Token');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Token');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Simbólico');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'CONFIRM_EMAIL_SERVICE'),'CONFIRM_EMAIL_SERVICE_TOKEN',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"token","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'CONFIRM_EMAIL_SERVICE_TOKEN'),'','Token:','en',true,true,0,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Token is not valid"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'CONFIRM_EMAIL_SERVICE_TOKEN'),'','Simbólico:','es',true,true,0,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Token no es válido"}',null);

INSERT INTO texts (default_text) VALUES ('User does not exist');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User does not exist');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','el usuario no existe');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'CONFIRM_EMAIL_SERVICE'),'CONFIRM_EMAIL_SERVICE_USERMISSING',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_USERMISSING'),'User does not exist','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_USERMISSING'),'el usuario no existe','es',true,null);

INSERT INTO texts (default_text) VALUES ('Database Query Error');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Database Query Error');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de consulta de base de datos');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'CONFIRM_EMAIL_SERVICE'),'CONFIRM_EMAIL_SERVICE_DBERROR',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_DBERROR'),'Database Query Error','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_DBERROR'),'Error de consulta de base de datos','es',true,null);

INSERT INTO texts (default_text) VALUES ('Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Exitoso');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'CONFIRM_EMAIL_SERVICE'),'CONFIRM_EMAIL_SERVICE_SUCCESSFUL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_SUCCESSFUL'),'Email Confirmation Successful','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_SUCCESSFUL'),'Confirmación de correo electrónico con éxito','es',true,null);


INSERT INTO texts (default_text) VALUES ('General Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','General Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','General Fail');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'CONFIRM_EMAIL_SERVICE'),'CONFIRM_EMAIL_SERVICE_FAIL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_FAIL'),'Email Confirmation failed','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'CONFIRM_EMAIL_SERVICE_FAIL'),'Error de confirmación de correo electrónico','es',true,null);
