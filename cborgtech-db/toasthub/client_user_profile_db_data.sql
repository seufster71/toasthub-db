
-- User profile Form
INSERT INTO texts (default_text) VALUES ('User Profile Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User Profile Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de perfil de usuario');
INSERT INTO page_name (name,text_id,category) VALUES ('USER_PROFILE_FORM',@lastid,'MEMBER');

INSERT INTO texts (default_text) VALUES ('First name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','First name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de pila');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_FORM'),'USER_PROFILE_FORM_FIRSTNAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"firstname","type":"String"}',null,null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_FIRSTNAME'),'','First name:','en',true,true,1,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_FIRSTNAME'),'','Nombre de pila:','es',true,true,1,'',null);

INSERT INTO texts (default_text) VALUES ('Middle name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Middle name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Segundo nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_FORM'),'USER_PROFILE_FORM_MIDDLENAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"middlename","type":"String"}',null,null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_MIDDLENAME'),'','Middle name:','en',true,false,2,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_MIDDLENAME'),'','Segundo nombre:','es',true,false,2,'',null);

INSERT INTO texts (default_text) VALUES ('Last name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Last name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Apellido');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_FORM'),'USER_PROFILE_FORM_LASTNAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"lastname","type":"String"}',null,null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_LASTNAME'),'','Last name:','en',true,true,3,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_LASTNAME'),'','Apellido:','es',true,true,3,'',null);

INSERT INTO texts (default_text) VALUES ('Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_FORM'),'USER_PROFILE_FORM_USERNAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"username","type":"String"}','{"modify":"disabled"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_USERNAME'),'','Username:','en',true,true,4,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_USERNAME'),'','Nombre de usuario:','es',true,true,4,'',null);

INSERT INTO texts (default_text) VALUES ('Email');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_FORM'),'USER_PROFILE_FORM_EMAIL',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"email","type":"String"}',null,null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_EMAIL'),'','Email:','en',true,true,5,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_EMAIL'),'','Email:','es',true,true,5,'',null);

INSERT INTO texts (default_text) VALUES ('Zipcode');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Zipcode');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código postal');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_FORM'),'USER_PROFILE_FORM_ZIPCODE',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"zipcode","type":"String"}',null,null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_ZIPCODE'),'','Zipcode:','en',true,true,6,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_ZIPCODE'),'','Código postal:','es',true,true,6,'',null);

INSERT INTO texts (default_text) VALUES ('Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_FORM'),'USER_PROFILE_FORM_LANGUAGE',@lastid,'SLT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.User","field":"lang","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_LANGUAGE'),'{"localList":"toastHub.languages"}','Language:','en',true,true,7,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'USER_PROFILE_FORM_LANGUAGE'),'{"localList":"toastHub.languages"}','Idioma:','es',true,true,7,'',null);

-- User profile Page
INSERT INTO texts (default_text) VALUES ('User Profile Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','User Profile Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de perfil de usuario');
INSERT INTO page_name (name,text_id,category) VALUES ('USER_PROFILE_PAGE',@lastid,'MEMBER');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'USER_PROFILE_PAGE'),'USER_PROFILE_PAGE_HEADER',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'USER_PROFILE_PAGE_HEADER'),'My Profile','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'USER_PROFILE_PAGE_HEADER'),'Mi perfil','es',true,null);

