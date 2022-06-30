
-- Admin Users Page
INSERT INTO texts (default_text) VALUES ('Admin User Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin User Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de usuario administrador');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_USER_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('First name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','First name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de pila');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_FIRSTNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"firstname","type":"String"}',null,0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FIRSTNAME'),'','First name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FIRSTNAME'),'','Nombre de pila:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Middle name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Middle name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Segundo nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_MIDDLENAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"middlename","type":"String"}',null,1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_MIDDLENAME'),'','Middle name:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_MIDDLENAME'),'','Segundo nombre:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Apellido');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_LASTNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"lastname","type":"String"}',null,2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LASTNAME'),'','Last name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LASTNAME'),'','Apellido:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_USERNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}','{"modify":"disabled"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_USERNAME'),'','Username:','en',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_USERNAME'),'','Nombre de usuario:','es',true,true,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_EMAIL',@lastid,'TXT','email',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"email","type":"String"}',null,4);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_EMAIL'),'','Email:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_EMAIL'),'','Email:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Zipcode');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Zipcode');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código postal');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_ZIPCODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"zipcode","type":"String"}',null,5);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ZIPCODE'),'','Zipcode:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ZIPCODE'),'','Código postal:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_LANGUAGE',@lastid,'MDLSNG','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"lang","fieldChild":{"language":{"clazz":"org.toasthub.core.general.model.Langauge","type":"Object"}},"method":"setLang","type":"String"}',6);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LANGUAGE'),'{"options":[{"value":"en","label":"English","defaultInd":true},{"value":"es","label":"Spanish"}]}','Language:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LANGUAGE'),'{"options":[{"value":"en","label":"English","defaultInd":true},{"value":"es","label":"Spanish"}]}','Idioma:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Alternate Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Alternate Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Correo electrónico alternativo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_ALTERNATE_EMAIL',@lastid,'TXT','email',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"alternateEmail","type":"String"}',7);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ALTERNATE_EMAIL'),'','Alternate Email:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ALTERNATE_EMAIL'),'','Correo electrónico alternativo:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_PASSWORD',@lastid,'TXT','password',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"password","type":"String","encrypt":true}','{"onChange":{"func":"passwordStrength"},"onBlur":{"func":"clearVerifyPassword"}}',8);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_PASSWORD'),'','Password:','en',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","comment":"1 Lower 1 Upper 1 Number 1 Special Min 7 Max 30","failMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_PASSWORD'),'','Contraseña:','es',true,true,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","comment":"1 Inferior 1 Superior 1 Número 1 Especial Mín. 7 Máx. 30","failMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Verify Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Verify Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Verificar contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_VERIFY_PASSWORD',@lastid,'TXT','password',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"verifyPassword","type":"String","encrypt":true}','{"onBlur":{"validation":"matchField"}}',9);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_VERIFY_PASSWORD'),'','Verify Password:','en',true,false,'{"matchField":{"id":"ADMIN_USER_FORM_PASSWORD","successMsg":"Password match","failMsg":"Password does not match"}}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_VERIFY_PASSWORD'),'','Verificar contraseña:','es',true,false,'{"matchField":{"id":"ADMIN_USER_FORM_PASSWORD","successMsg":"Password match","failMsg":"La contraseña no coincide"}}');

INSERT INTO texts (default_text) VALUES ('Log Level');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Log Level');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nivel de registro');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_LOGLEVEL',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"logLevel","type":"String"}',10); -- TRACE < DEBUG < INFO < WARN < ERROR < FATAL < OFF.
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LOGLEVEL'),'{"options":[{"value":"OFF","label":"Off","defaultInd":true},{"value":"FATAL","label":"Fatal"},{"value":"ERROR","label":"Error"},{"value":"WARN","label":"Warning"},{"value":"INFO","label":"Info"},{"value":"DEBUG","label":"Debug"},{"value":"TRACE","label":"Trace"}]}','Log Level:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LOGLEVEL'),'{"options":[{"value":"OFF","label":"Apagado","defaultInd":true},{"value":"FATAL","label":"Fatal"},{"value":"ERROR","label":"Error"},{"value":"WARN","label":"Advertencia"},{"value":"INFO","label":"Información"},{"value":"DEBUG","label":"Depurar"},{"value":"TRACE","label":"Rastro"}]}','Nivel de registro:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"active","type":"Boolean"}',11);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","defaultInd":true},{"value":false,"label":"Disable"}]}','Active:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","defaultInd":true},{"value":false,"label":"Inhabilitar"}]}','Activo:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Force password reset');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Force password reset');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Restablecer contraseña de la contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_FORM'),'ADMIN_USER_FORM_FORCERESET',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"forceReset","type":"Boolean"}',12);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FORCERESET'),'{"options":[{"value":true,"label":"Yes"},{"value":false,"label":"No","defaultInd":true}]}','Force password reset:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FORCERESET'),'{"options":[{"value":true,"label":"Yes"},{"value":false,"label":"No","defaultInd":true}]}','Restablecer contraseña de la contraseña:','es',true,false,'');


-- Admin Users Page
INSERT INTO texts (default_text) VALUES ('Admin User Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin User Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de usuario Admin');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_USER_PAGE',@lastid,'ADMIN');

-- Texts
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_USER_PAGE_HEADER'),'Users','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_USER_PAGE_HEADER'),'Usuarios','es',true);


-- Table
INSERT INTO texts (default_text) VALUES ('Column First name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column First name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna Nombre');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_FIRSTNAME',@lastid,'TABLE1','{"field":"firstname"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_FIRSTNAME'),'First name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_FIRSTNAME'),'Nombre de pila','es',true);

INSERT INTO texts (default_text) VALUES ('Column Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna Apellido');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_LASTNAME',@lastid,'TABLE1','{"field":"lastname"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_LASTNAME'),'Last name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_LASTNAME'),'Apellido','es',true);

INSERT INTO texts (default_text) VALUES ('Column User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario de la columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_USERNAME',@lastid,'TABLE1','{"field":"username"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_USERNAME'),'Username','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_USERNAME'),'Nombre de usuario','es',true);

INSERT INTO texts (default_text) VALUES ('Column Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Correo electrónico de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_EMAIL',@lastid,'TABLE1','{"field":"email"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_EMAIL'),'Email','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_EMAIL'),'Email','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa-regular fa-pen-to-square thub-1","permission":{"AUEU":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa-regular fa-trash-can thub-1","permission":{"AUDU":"W"},"label":{"en":"Delete"}},{"code":"MODIFY_ROLE","classField":"fa fa-users fa-1","permission":{"AUR":"R"},"label":{"en":"Roles"}}]}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_OPTIONS'),'Options','es',true);

