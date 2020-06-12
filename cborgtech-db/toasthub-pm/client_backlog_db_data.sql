
-- FORM
INSERT INTO texts (default_text) VALUES ('Backlog Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Backlog Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de reserva');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_BACKLOG_FORM',@lastid,'MEMBER');


INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_FORM'),'PM_BACKLOG_FORM_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Backlog","field":"name","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_BACKLOG_FORM_NAME'),'','Name:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_BACKLOG_FORM_NAME'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Description');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Description');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Descripción');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_FORM'),'PM_BACKLOG_FORM_DESCRIPTION',@lastid,'TXTAREA','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Backlog","field":"description","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_BACKLOG_FORM_DESCRIPTION'),'','Description:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_BACKLOG_FORM_DESCRIPTION'),'','Descripción:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_FORM'),'PM_BACKLOG_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Backlog","field":"active","type":"Boolean"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_BACKLOG_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,4,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_BACKLOG_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,4,'');

-- Page
INSERT INTO texts (default_text) VALUES ('Backlog Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Backlog Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de reserva');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_BACKLOG_PAGE',@lastid,'MEMBER');

-- PAGE text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_PAGE'),'PM_BACKLOG_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_BACKLOG_PAGE_HEADER'),'Backlogs','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_BACKLOG_PAGE_HEADER'),'Atrasos','es',true);

INSERT INTO texts (default_text) VALUES ('Page Header with Parent Product');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header with Parent Product');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página con producto principal');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_PAGE'),'PM_BACKLOG_PAGE_HEADER_PARENT_PRODUCT',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_BACKLOG_PAGE_HEADER_PARENT_PRODUCT'),'Backlog for Product: ','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_BACKLOG_PAGE_HEADER_PARENT_PRODUCT'),'Backlog para producto:','es',true);

INSERT INTO texts (default_text) VALUES ('Page Header with Parent Project');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header with Parent Project');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página con proyecto principal');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_PAGE'),'PM_BACKLOG_PAGE_HEADER_PARENT_PROJECT',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_BACKLOG_PAGE_HEADER_PARENT_PROJECT'),'Backlog for Project: ','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_BACKLOG_PAGE_HEADER_PARENT_PROJECT'),'Backlog para Proyecto:','es',true);

-- TABLE
INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_PAGE'),'PM_BACKLOG_TABLE_NAME',@lastid,'TABLE1','{"field":"name"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_BACKLOG_TABLE_NAME'),'Name','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_BACKLOG_TABLE_NAME'),'Nombre','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Status');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_PAGE'),'PM_BACKLOG_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_BACKLOG_TABLE_STATUS'),'Status','en',true,3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_BACKLOG_TABLE_STATUS'),'Estado','es',true,3);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_BACKLOG_PAGE'),'PM_BACKLOG_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa fa-pencil-square-o fa-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa fa-trash fa-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}},{"code":"SCRUM","classField":"fa fa-snowflake-o fa-1","permission":{"ARDR":"W"},"label":{"en":"Scrum"}},{"code":"DEFECT","classField":"fa fa-bug fa-1","permission":{"ARDR":"W"},"label":{"en":"Defect"}},{"code":"ENHANCEMENT","classField":"fa fa-fighter-jet fa-1","permission":{"ARDR":"W"},"label":{"en":"Enhancement"}}]}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_BACKLOG_TABLE_OPTIONS'),'Options','en',true,4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_BACKLOG_TABLE_OPTIONS'),'Options','es',true,4);
