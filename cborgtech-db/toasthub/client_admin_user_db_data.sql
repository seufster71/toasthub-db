
-- Admin Users Page
INSERT INTO texts (default_text) VALUES ('Admin User Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin User Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de usuario Admin');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'ADMIN_USER_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('First name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','First name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de pila');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_FIRSTNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"firstname","type":"String"}',null);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FIRSTNAME'),'','First name:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FIRSTNAME'),'','Nombre de pila:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Middle name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Middle name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Segundo nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_MIDDLENAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"middlename","type":"String"}',null);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_MIDDLENAME'),'','Middle name:','en',true,false,2,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_MIDDLENAME'),'','Segundo nombre:','es',true,false,2,'');

INSERT INTO texts (default_text) VALUES ('Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Apellido');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_LASTNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"lastname","type":"String"}',null);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LASTNAME'),'','Last name:','en',true,true,3,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LASTNAME'),'','Apellido:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_USERNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}','{"modify":"disabled"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_USERNAME'),'','Username:','en',true,true,4,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_USERNAME'),'','Nombre de usuario:','es',true,true,4,'{"regex":"^[a-zA-Z0-9_#!@.]*$","errorMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_EMAIL',@lastid,'TXT','email',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"email","type":"String"}',null);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_EMAIL'),'','Email:','en',true,true,5,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_EMAIL'),'','Email:','es',true,true,5,'');

INSERT INTO texts (default_text) VALUES ('Zipcode');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Zipcode');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código postal');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_ZIPCODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"zipcode","type":"String"}',null);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ZIPCODE'),'','Zipcode:','en',true,true,6,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ZIPCODE'),'','Código postal:','es',true,true,6,'');

INSERT INTO texts (default_text) VALUES ('Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_LANGUAGE',@lastid,'MDLSNG','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"lang","fieldChild":{"language":{"clazz":"org.toasthub.core.general.model.Langauge","type":"Object"}},"method":"setLang","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LANGUAGE'),'{"options":[{"value":"en","label":"English","defaultInd":true},{"value":"es","label":"Spanish"}]}','Language:','en',true,true,7,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LANGUAGE'),'{"options":[{"value":"en","label":"English","defaultInd":true},{"value":"es","label":"Spanish"}]}','Idioma:','es',true,true,7,'');

INSERT INTO texts (default_text) VALUES ('Alternate Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Alternate Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Correo electrónico alternativo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_ALTERNATE_EMAIL',@lastid,'TXT','email',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"alternateEmail","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ALTERNATE_EMAIL'),'','Alternate Email:','en',true,false,8,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ALTERNATE_EMAIL'),'','Correo electrónico alternativo:','es',true,false,8,'');

INSERT INTO texts (default_text) VALUES ('Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_PASSWORD',@lastid,'TXT','password',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"password","type":"String","encrypt":true}','{"onChange":{"func":"passwordStrength"},"onBlur":{"func":"clearVerifyPassword"}}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_PASSWORD'),'','Password:','en',true,true,8,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","comment":"1 Lower 1 Upper 1 Number 1 Special Min 7 Max 30","failMsg":"Validation Error"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_PASSWORD'),'','Contraseña:','es',true,true,8,'{"regex":"^(?=(.*[a-z]){1,})(?=(.*[A-Z]){1,})(?=(.*[\\\\d]){1,})(?=(.*[^a-zA-Z0-9]){1,}).{7,30}$","comment":"1 Inferior 1 Superior 1 Número 1 Especial Mín. 7 Máx. 30","failMsg":"Error de validacion"}');

INSERT INTO texts (default_text) VALUES ('Verify Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Verify Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Verificar contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_VERIFY_PASSWORD',@lastid,'TXT','password',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"verifyPassword","type":"String","encrypt":true}','{"onBlur":{"validation":"matchField"}}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_VERIFY_PASSWORD'),'','Verify Password:','en',true,false,8,'{"matchField":{"id":"ADMIN_USER_FORM_PASSWORD","successMsg":"Password match","failMsg":"Password does not match"}}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_VERIFY_PASSWORD'),'','Verificar contraseña:','es',true,false,8,'{"matchField":{"id":"ADMIN_USER_FORM_PASSWORD","successMsg":"Password match","failMsg":"La contraseña no coincide"}}');

INSERT INTO texts (default_text) VALUES ('Log Level');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Log Level');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nivel de registro');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_LOGLEVEL',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"logLevel","type":"String"}'); -- TRACE < DEBUG < INFO < WARN < ERROR < FATAL < OFF.
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LOGLEVEL'),'{"options":[{"value":"OFF","text":"Off","defaultInd":true},{"value":"FATAL","text":"Fatal"},{"value":"ERROR","text":"Error"},{"value":"WARN","text":"Warning"},{"value":"INFO","text":"Info"},{"value":"DEBUG","text":"Debug"},{"value":"TRACE","text":"Trace"}]}','Log Level:','en',true,false,9,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_LOGLEVEL'),'{"options":[{"value":"OFF","text":"Apagado","defaultInd":true},{"value":"FATAL","text":"Fatal"},{"value":"ERROR","text":"Error"},{"value":"WARN","text":"Advertencia"},{"value":"INFO","text":"Información"},{"value":"DEBUG","text":"Depurar"},{"value":"TRACE","text":"Rastro"}]}','Nivel de registro:','es',true,false,9,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"active","type":"Boolean"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","defaultInd":true},{"value":false,"label":"Disable"}]}','Active:','en',true,true,10,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","defaultInd":true},{"value":false,"label":"Inhabilitar"}]}','Activo:','es',true,true,10,'');

INSERT INTO texts (default_text) VALUES ('Force password reset');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Force password reset');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Restablecer contraseña de la contraseña');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_FORM_FORCERESET',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"forceReset","type":"Boolean"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FORCERESET'),'{"options":[{"value":true,"label":"Yes"},{"value":false,"label":"No","defaultInd":true}]}','Force password reset:','en',true,false,11,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_FORM_FORCERESET'),'{"options":[{"value":true,"label":"Yes"},{"value":false,"label":"No","defaultInd":true}]}','Restablecer contraseña de la contraseña:','es',true,false,11,'');


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
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_FIRSTNAME',@lastid,'TABLE1','{"field":"firstname"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_FIRSTNAME'),'First name','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_FIRSTNAME'),'Nombre de pila','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna Apellido');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_LASTNAME',@lastid,'TABLE1','{"field":"lastname"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_LASTNAME'),'Last name','en',true,1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_LASTNAME'),'Apellido','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column User name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column User name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario de la columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_USERNAME',@lastid,'TABLE1','{"field":"username"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_USERNAME'),'Username','en',true,2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_USERNAME'),'Nombre de usuario','es',true,2);

INSERT INTO texts (default_text) VALUES ('Column Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Correo electrónico de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_EMAIL',@lastid,'TABLE1','{"field":"email"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_EMAIL'),'Email','en',true,3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_EMAIL'),'Email','es',true,3);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_STATUS'),'Status','en',true,4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_STATUS'),'Estado','es',true,4);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_PAGE'),'ADMIN_USER_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"icon":"option1","classField":"fa fa-pencil-square-o fa-1","permission":{"AUEU":"R"},"label":{"en":"Modify"}},{"icon":"option2","classField":"fa fa-trash fa-1","permission":{"AUDU":"W"},"label":{"en":"Delete"}},{"icon":"option3","classField":"fa fa-users fa-1","permission":{"AUR":"R"},"label":{"en":"Roles"}}]}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_OPTIONS'),'Options','en',true,5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_USER_TABLE_OPTIONS'),'Options','es',true,5);

