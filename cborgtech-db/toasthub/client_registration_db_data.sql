-- PageName  Registration

INSERT INTO texts (default_text) VALUES ('Registration Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de inscripción');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'REGISTRATION_PAGE',@lastid,'PUBLIC');

-- Form Field  Registration Checkname
INSERT INTO texts (default_text) VALUES ('User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_CHECKNAME_FORM_USERNAME',@lastid,'TXT',2,25,null,'FORM2',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_USERNAME'),'-Valid email address-','User name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_USERNAME'),'-Dirección de email válida-','Nombre de usuari:','es',true,true,'');

-- Form Field  Registration Full
INSERT INTO texts (default_text) VALUES ('First name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','First name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Primer nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_FIRSTNAME',@lastid,'TXT','text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"firstname","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_FIRSTNAME'),'','First name:','en',true,true,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_FIRSTNAME'),'','Nombre de pila:','es',true,true,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Middle name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Middle name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Segundo nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_MIDDLENAME',@lastid,'TXT','text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"middlename","type":"String"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_MIDDLENAME'),'','Middle name:','en',false,false,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_MIDDLENAME'),'','Segundo Nombre:','es',false,false,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Apellido');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_LASTNAME',@lastid,'TXT','text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"lastname","type":"String"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_LASTNAME'),'','Last name:','en',true,true,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_LASTNAME'),'','Apellido:','es',true,true,'{"regex":"^[a-zA-Z0-9]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Zip code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Zip code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código postal');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_ZIPCODE',@lastid,'TXT','text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"zipcode","type":"String"}',4);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_ZIPCODE'),'','Zip code:','en',true,true,'{"regex":"^\\\\d{5}(?:[-\\\\s]\\\\d{4})?$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_ZIPCODE'),'','Código postal:','es',true,true,'{"regex":"^\\\\d{5}(?:[-\\\\s]\\\\d{4})?$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_USERNAME',@lastid,'TXT','text',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}',5);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_USERNAME'),'-Name used on posts-','User name:','en',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_USERNAME'),'-Name used on posts-','Nombre de usuari:','es',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_EMAIL',@lastid,'TXT','email',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"email","type":"String"}',6);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_EMAIL'),'-Valid email address-','Email:','en',true,true,'{"regex":"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\\\.[a-zA-Z]{2,}$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_EMAIL'),'-Dirección de email válida-','Nombre de usuari:','es',true,true,'{"regex":"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\\\.[a-zA-Z]{2,}$","errorMsg":"Validation Error"}');

INSERT INTO texts (default_text) VALUES ('Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Clave');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_PASSWORD',@lastid,'TXT','password',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"password","type":"String"}',7);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_PASSWORD'),'','Password:','en',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[!#@&*$%]){1,}).{7,30}$","errorMsg":"Validation Error","onFail":[{"regex":"(?=(.*[a-z]){1,})","link":"REGISTRATION_FORM_ALPHA_CHECK"},{"regex":"(?=(.*[A-Z]){1,})","link":"REGISTRATION_FORM_CAPITAL_CHECK"},{"regex":"(?=(.*[\\\\d]){1,})","link":"REGISTRATION_FORM_NUMBER_CHECK"},{"regex":"(?=(.*[!#@&*$%]){1,})","link":"REGISTRATION_FORM_SPECIAL_CHECK"},{"regex":".{7,30}","link":"REGISTRATION_FORM_COUNT_CHECK"}]}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_PASSWORD'),'','Contraseña:','es',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[!#@&*$%]){1,}).{7,30}$","errorMsg":"Error de validacion","onFail":[{"regex":"(?=(.*[a-z]){1,})","link":"REGISTRATION_FORM_ALPHA_CHECK"},{"regex":"(?=(.*[A-Z]){1,})","link":"REGISTRATION_FORM_CAPITAL_CHECK"},{"regex":"(?=(.*[\\\\d]){1,})","link":"REGISTRATION_FORM_NUMBER_CHECK"},{"regex":"(?=(.*[!#@&*$%]){1,})","link":"REGISTRATION_FORM_SPECIAL_CHECK"},{"regex":".{7,30}","link":"REGISTRATION_FORM_COUNT_CHECK"}]}');

INSERT INTO texts (default_text) VALUES ('Verify Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Verify Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Verificar contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_VERIFYPASSWORD',@lastid,'TXT','password',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"verifyPassword","type":"String"}','{"matchItem":"REGISTRATION_FORM_PASSWORD"}',8);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_VERIFYPASSWORD'),'','Verify Password:','en',true,true,'{"operator":"equals","matchField":"REGISTRATION_FORM_PASSWORD","errorMsg":"Password does not match"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'REGISTRATION_FORM_VERIFYPASSWORD'),'','Verifique su contraseña:','es',true,true,'{"operator":"equals","matchField":"REGISTRATION_FORM_PASSWORD","errorMsg":"Las contraseñas no coinciden"}');

-- Labels Registration Check Name
INSERT INTO texts (default_text) VALUES ('Search Username - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Search Username - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Buscar Nombre de usuario - Botón');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_CHECKNAME_FORM_SEARCH_USERNAME_BUTTON',@lastid,'BUTTONGRP1',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_SEARCH_USERNAME_BUTTON'),'Search','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_SEARCH_USERNAME_BUTTON'),'Search es','es',true);

INSERT INTO texts (default_text) VALUES ('Reset - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Reset - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de reinicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_CHECKNAME_FORM_RESET_BUTTON',@lastid,'BUTTONGRP1',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_RESET_BUTTON'),'Reset','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'REGISTRATION_CHECKNAME_FORM_RESET_BUTTON'),'Reajustar','es',true);

-- Labels Registration
INSERT INTO texts (default_text) VALUES ('Register - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Register - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro - Botón');
INSERT INTO pref_label_name (pref_name_id,name,class_name,text_id,group_name,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_SUBMIT_BUTTON','form-control btn btn-register',@lastid,'BUTTONGRP2',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'REGISTRATION_FORM_SUBMIT_BUTTON'),'Register','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'REGISTRATION_FORM_SUBMIT_BUTTON'),'Registro','es',true);

-- Texts Registration
INSERT INTO texts (default_text) VALUES ('Registration');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_HEADER'),'Registration','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_HEADER'),'Registro','es',true);

INSERT INTO texts (default_text) VALUES ('Registration Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro exitoso');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_SUCCESSFUL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_SUCCESSFUL'),'User Registration Successful','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_SUCCESSFUL'),'El éxito de Registro de Usuario','es',true);

INSERT INTO texts (default_text) VALUES ('Registration Failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro fallido');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_FAILED',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_FAILED'),'User Registration Failed','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_FAILED'),'Error de Registro de Usuario','es',true);

INSERT INTO texts (default_text) VALUES ('Capital Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Capital Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cheque de capital');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_CAPITAL_CHECK',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_CAPITAL_CHECK'),'At least one capital','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_CAPITAL_CHECK'),'Al menos un capital','es',true);

INSERT INTO texts (default_text) VALUES ('Alpha Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Alpha Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cheque alfa');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_ALPHA_CHECK',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_ALPHA_CHECK'),'At least one alpha letter','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_ALPHA_CHECK'),'Al menos una letra alfa','es',true);

INSERT INTO texts (default_text) VALUES ('Number Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Number Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Número de cheques');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_NUMBER_CHECK',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_NUMBER_CHECK'),'At least one number','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_NUMBER_CHECK'),'Al menos un número','es',true);

INSERT INTO texts (default_text) VALUES ('Count Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Count Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cuenta de Cheques');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_COUNT_CHECK',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_COUNT_CHECK'),'At least 8 characters','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_COUNT_CHECK'),'Al menos 8 caracteres','es',true);

INSERT INTO texts (default_text) VALUES ('Special character Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Special character Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Carácter especial Comprobar');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_SPECIAL_CHECK',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_SPECIAL_CHECK'),'At least one special characters !#@&*$%','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_SPECIAL_CHECK'),'Al menos un personaje especial !#@&*$%','es',true);

INSERT INTO texts (default_text) VALUES ('Match Check');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Match Check');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Comprobación del partido');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_FORM_MATCH_CHECK',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_MATCH_CHECK'),'Match password','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FORM_MATCH_CHECK'),'Contraseña','es',true);

INSERT INTO texts (default_text) VALUES ('Registration Show Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Show Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro Mostrar formulario');
INSERT INTO pref_option_name (pref_name_id,name,text_id,value_type,default_value,use_default) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_PAGE'),'REGISTRATION_SHOW_FORM',@lastid,'Boolean','true',false);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'REGISTRATION_SHOW_FORM'),'true','en',true);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'REGISTRATION_SHOW_FORM'),'true','es',true);


-- Registration Service
INSERT INTO texts (default_text) VALUES ('Registration Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de inscripción');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'REGISTRATION_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Match Password Failure');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Match Password Failure');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de contraseña de coincidencia');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_SERVICE_MATCH_PASSWORD_FAILURE',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_SERVICE_MATCH_PASSWORD_FAILURE'),'Registration Failed - Passwords did not match','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_SERVICE_MATCH_PASSWORD_FAILURE'),'Error de registro: las contraseñas no coincidieron','es',true);

INSERT INTO texts (default_text) VALUES ('Registration Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Registro exitoso');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_SUCCESSFUL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_SUCCESSFUL'),'Registration SUCCESSFUL! - Check email to complete process!','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_SUCCESSFUL'),'¡Registro exitoso! - ¡Revise el correo electrónico para completar el proceso!','es',true);

INSERT INTO texts (default_text) VALUES ('Registration Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de registro');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_FAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FAIL'),'Registration Fail','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'REGISTRATION_FAIL'),'Error de registro','es',true);



INSERT INTO texts (default_text) VALUES ('Registration Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Registration Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio de registro');
INSERT INTO pref_option_name (pref_name_id,name,text_id,value_type,default_value,use_default) VALUES((SELECT id FROM pref_name WHERE name = 'REGISTRATION_SERVICE'),'REGISTRATION_SERVICE',@lastid,'Boolean','true',false);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'REGISTRATION_SERVICE'),'true','en',true);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'REGISTRATION_SERVICE'),'true','es',true);
