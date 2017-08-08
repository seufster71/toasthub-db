-- PageName  Registration
INSERT INTO texts (default_text) VALUES ('Registration Check Name Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Check Name Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de inscripción Comprobar nombre');
INSERT INTO page_name (name,text_id,category) VALUES ('REGISTRATION_CHECKNAME_FORM',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Registration Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de inscripción');
INSERT INTO page_name (name,text_id,category) VALUES ('REGISTRATION_FORM',@lastid,'PUBLIC');

-- Form Field  Registration Checkname
INSERT INTO texts (default_text) VALUES ('User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_CHECKNAME_FORM'),'REGISTRATION_CHECKNAME_FORM_USERNAME',@lastid,'TXT',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_USERNAME'),'-Valid email address-','User name:','en',true,true,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_USERNAME'),'-Dirección de email válida-','Nombre de usuari:','es',true,true,0,'',null);

-- Form Field  Registration Full
INSERT INTO texts (default_text) VALUES ('First name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','First name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Primer nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_FIRSTNAME',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"firstname","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_FIRSTNAME'),'','First name:','en',true,true,0,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_FIRSTNAME'),'','Nombre de pila:','es',true,true,0,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Error de validacion"}',null);

INSERT INTO texts (default_text) VALUES ('Middle name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Middle name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Segundo nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_MIDDLENAME',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"middlename","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_MIDDLENAME'),'','Middle name:','en',false,false,1,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_MIDDLENAME'),'','Segundo Nombre:','es',false,false,1,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Error de validacion"}',null);

INSERT INTO texts (default_text) VALUES ('Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Apellido');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_LASTNAME',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"lastname","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_LASTNAME'),'','Last name:','en',true,true,2,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_LASTNAME'),'','Apellido:','es',true,true,2,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Error de validacion"}',null);

INSERT INTO texts (default_text) VALUES ('Zip code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Zip code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código postal');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_ZIPCODE',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"zipcode","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_ZIPCODE'),'','Zip code:','en',true,true,3,'{"regex":"^\\\\d{5}(?:[-\\\\s]\\\\d{4})?$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_ZIPCODE'),'','Código postal:','es',true,true,3,'{"regex":"^\\\\d{5}(?:[-\\\\s]\\\\d{4})?$","errorMsg":"Error de validacion"}',null);

INSERT INTO texts (default_text) VALUES ('User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_USERNAME',@lastid,'TXT','text',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_USERNAME'),'-Name used on posts-','User name:','en',true,true,4,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_USERNAME'),'-Name used on posts-','Nombre de usuari:','es',true,true,4,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}',null);

INSERT INTO texts (default_text) VALUES ('Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_EMAIL',@lastid,'TXT','email',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"email","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_EMAIL'),'-Valid email address-','Email:','en',true,true,5,'{"regex":"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\\\.[a-zA-Z]{2,}$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_EMAIL'),'-Dirección de email válida-','Nombre de usuari:','es',true,true,5,'{"regex":"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\\\.[a-zA-Z]{2,}$","errorMsg":"Validation Error"}',null);

INSERT INTO texts (default_text) VALUES ('Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Clave');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_PASSWORD',@lastid,'TXT','password',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"password","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_PASSWORD'),'','Password:','en',true,true,6,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Validation Error"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_PASSWORD'),'','Contraseña:','es',true,true,6,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","errorMsg":"Error de validacion"}',null);

INSERT INTO texts (default_text) VALUES ('Verify Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Verify Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Verificar contraseña');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_VERIFYPASSWORD',@lastid,'TXT','password',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"verifyPassword","type":"String"}','{"matchItem":"REGISTRATION_FORM_PASSWORD"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_VERIFYPASSWORD'),'','Verify Password:','en',true,true,7,'{"jsClass":"toastHub.getController(\\"usermanager\\")","jsMethod":"matchPassword"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'REGISTRATION_FORM_VERIFYPASSWORD'),'','Verifique su contraseña:','es',true,true,7,'{"jsClass":"toastHub.getController(\\"usermanager\\")","jsMethod":"matchPassword"}',null);

-- Labels Registration Check Name
INSERT INTO texts (default_text) VALUES ('Search Username - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Search Username - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Buscar Nombre de usuario - Botón');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_CHECKNAME_FORM'),'REGISTRATION_CHECKNAME_FORM_SEARCH_USERNAME_BUTTON',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_SEARCH_USERNAME_BUTTON'),'Search','en',true,0,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_SEARCH_USERNAME_BUTTON'),'Search es','es',true,0,null);

INSERT INTO texts (default_text) VALUES ('Reset - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Reset - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de reinicio');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_CHECKNAME_FORM'),'REGISTRATION_CHECKNAME_FORM_RESET_BUTTON',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_RESET_BUTTON'),'Reset','en',true,1,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_RESET_BUTTON'),'Reajustar','es',true,1,null);

-- Labels Registration Full
INSERT INTO texts (default_text) VALUES ('Register - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Register - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro - Botón');
INSERT INTO page_label_name (page_name_id,name,class_name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_SUBMIT_BUTTON','form-control btn btn-register',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'REGISTRATION_FORM_SUBMIT_BUTTON'),'Register','en',true,0,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'REGISTRATION_FORM_SUBMIT_BUTTON'),'Registro','es',true,0,null);

-- Texts Registration
INSERT INTO texts (default_text) VALUES ('Registration Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro exitoso');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_SUCCESSFUL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_SUCCESSFUL'),'User Registration Successful','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_SUCCESSFUL'),'El éxito de Registro de Usuario','es',true,null);

INSERT INTO texts (default_text) VALUES ('Registration Failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro fallido');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_FAILED',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_FAILED'),'User Registration Failed','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_FAILED'),'Error de Registro de Usuario','es',true,null);

INSERT INTO texts (default_text) VALUES ('Capital Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Capital Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cheque de capital');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_CAPITAL_CHECK',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_CAPITAL_CHECK'),'At least one capital','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_CAPITAL_CHECK'),'Al menos un capital','es',true,null);

INSERT INTO texts (default_text) VALUES ('Alpha Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Alpha Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cheque alfa');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_ALPHA_CHECK',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_ALPHA_CHECK'),'At least one alpha letter','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_ALPHA_CHECK'),'Al menos una letra alfa','es',true,null);

INSERT INTO texts (default_text) VALUES ('Number Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Number Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Número de cheques');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_NUMBER_CHECK',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_NUMBER_CHECK'),'At least one number','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_NUMBER_CHECK'),'Al menos un número','es',true,null);

INSERT INTO texts (default_text) VALUES ('Count Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Count Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cuenta de Cheques');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_COUNT_CHECK',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_COUNT_CHECK'),'At least 8 characters','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_COUNT_CHECK'),'Al menos 8 caracteres','es',true,null);

INSERT INTO texts (default_text) VALUES ('Special character Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Special character Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Carácter especial Comprobar');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_SPECIAL_CHECK',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_SPECIAL_CHECK'),'At least one special characters !#@','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_SPECIAL_CHECK'),'Al menos un personaje especial !#@','es',true,null);

INSERT INTO texts (default_text) VALUES ('Match Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Match Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Comprobación del partido');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_FORM_MATCH_CHECK',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_MATCH_CHECK'),'Match password','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FORM_MATCH_CHECK'),'Contraseña','es',true,null);

INSERT INTO texts (default_text) VALUES ('Registration Show Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Show Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro Mostrar formulario');
INSERT INTO page_option_name (page_name_id,name,text_id,value_type,default_value,use_default,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_FORM'),'REGISTRATION_SHOW_FORM',@lastid,'Boolean','true',false,null);
INSERT INTO page_option_value (page_option_name_id,option_value,lang,rendered,created) VALUES ((SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SHOW_FORM'),'true','en',true,null);
INSERT INTO page_option_value (page_option_name_id,option_value,lang,rendered,created) VALUES ((SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SHOW_FORM'),'true','es',true,null);

-- Registration Service
INSERT INTO texts (default_text) VALUES ('Registration Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de inscripción');
INSERT INTO page_name (name,text_id,category) VALUES ('REGISTRATION_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Match Password Failure');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Match Password Failure');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de contraseña de coincidencia');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_SERVICE_MATCH_PASSWORD_FAILURE',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_SERVICE_MATCH_PASSWORD_FAILURE'),'Registration Failed - Passwords did not match','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_SERVICE_MATCH_PASSWORD_FAILURE'),'Error de registro: las contraseñas no coincidieron','es',true,null);

INSERT INTO texts (default_text) VALUES ('Registration Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro exitoso');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_SUCCESSFUL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_SUCCESSFUL'),'Registration SUCCESSFUL! - Check email to complete process!','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_SUCCESSFUL'),'¡Registro exitoso! - ¡Revise el correo electrónico para completar el proceso!','es',true,null);

INSERT INTO texts (default_text) VALUES ('Registration Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de registro');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_FAIL',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FAIL'),'Registration Fail','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'REGISTRATION_FAIL'),'Error de registro','es',true,null);



INSERT INTO texts (default_text) VALUES ('Registration Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio de registro');
INSERT INTO page_option_name (page_name_id,name,text_id,value_type,default_value,use_default,created) VALUES((SELECT id FROM page_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_SERVICE',@lastid,'Boolean','true',false,null);
INSERT INTO page_option_value (page_option_name_id,option_value,lang,rendered,created) VALUES ((SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SERVICE'),'true','en',true,null);
INSERT INTO page_option_value (page_option_name_id,option_value,lang,rendered,created) VALUES ((SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SERVICE'),'true','es',true,null);
