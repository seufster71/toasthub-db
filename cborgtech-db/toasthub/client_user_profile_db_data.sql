
-- User profile Form
INSERT INTO texts (default_text) VALUES ('User Profile Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User Profile Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de perfil de usuario');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'MEMBER_PROFILE_FORM',@lastid,'MEMBER');

INSERT INTO texts (default_text) VALUES ('First name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','First name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de pila');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_FIRSTNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"firstname","type":"String"}',null,0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_FIRSTNAME'),'','First name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_FIRSTNAME'),'','Nombre de pila:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Middle name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Middle name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Segundo nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_MIDDLENAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"middlename","type":"String"}',null,1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_MIDDLENAME'),'','Middle name:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_MIDDLENAME'),'','Segundo nombre:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Apellido');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_LASTNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"lastname","type":"String"}',null,2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_LASTNAME'),'','Last name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_LASTNAME'),'','Apellido:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_MEMBERNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}','{"modify":"disabled"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_MEMBERNAME'),'','Username:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_MEMBERNAME'),'','Nombre de usuario:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_EMAIL',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"email","type":"String"}',null,4);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_EMAIL'),'','Email:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_EMAIL'),'','Email:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Zipcode');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Zipcode');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código postal');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_ZIPCODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"zipcode","type":"String"}',null,5);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_ZIPCODE'),'','Zipcode:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_ZIPCODE'),'','Código postal:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_LANGUAGE',@lastid,'SLT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"lang","type":"String"}',6);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_LANGUAGE'),'{"referPrefGlobal":"LANGUAGES"}','Language:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_LANGUAGE'),'{"referPrefGlobal":"LANGUAGES"}','Idioma:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Log Level');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Log Level');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nivel de registro');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_FORM'),'MEMBER_PROFILE_FORM_LOGLEVEL',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.User","field":"logLevel","type":"String"}',7); -- TRACE < DEBUG < INFO < WARN < ERROR < FATAL < OFF.
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_LOGLEVEL'),'{"options":[{"value":"OFF","label":"Off","defaultInd":true},{"value":"FATAL","label":"Fatal"},{"value":"ERROR","label":"Error"},{"value":"WARN","label":"Warning"},{"value":"INFO","label":"Info"},{"value":"DEBUG","label":"Debug"},{"value":"TRACE","label":"Trace"}]}','Log Level:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'MEMBER_PROFILE_FORM_LOGLEVEL'),'{"options":[{"value":"OFF","label":"Apagado","defaultInd":true},{"value":"FATAL","label":"Fatal"},{"value":"ERROR","label":"Error"},{"value":"WARN","label":"Advertencia"},{"value":"INFO","label":"Información"},{"value":"DEBUG","label":"Depurar"},{"value":"TRACE","label":"Rastro"}]}','Nivel de registro:','es',true,false,'');


-- Admin Users Page
INSERT INTO texts (default_text) VALUES ('User Profile Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User Profile Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de perfil de usuario');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'MEMBER_PROFILE_PAGE',@lastid,'MEMBER');

-- Text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'MEMBER_PROFILE_PAGE'),'MEMBER_PROFILE_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'MEMBER_PROFILE_PAGE_HEADER'),'My Profile','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'MEMBER_PROFILE_PAGE_HEADER'),'Mi perfil','es',true);

