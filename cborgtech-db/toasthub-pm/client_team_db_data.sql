
-- FORM
INSERT INTO texts (default_text) VALUES ('Team Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Team Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Forma de equipo');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_TEAM_FORM',@lastid,'MEMBER');


INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_FORM'),'PM_TEAM_FORM_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Team","field":"name","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_FORM_NAME'),'','Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_FORM_NAME'),'','Nombre:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_FORM'),'PM_TEAM_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Team","field":"active","type":"Boolean"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');

-- Page
INSERT INTO texts (default_text) VALUES ('Team Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Team Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del proyecto');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_TEAM_PAGE',@lastid,'MEMBER');

-- PAGE text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_PAGE'),'PM_TEAM_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_TEAM_PAGE_HEADER'),'Teams','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_TEAM_PAGE_HEADER'),'Equipos','es',true);

-- TABLE
INSERT INTO texts (default_text) VALUES ('Column Link Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Link Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Link Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_PAGE'),'PM_TEAM_TABLE_LINK_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY_LINK","classField":"fa fa-link fa-1","permission":{"ARER":"R"},"label":{"en":"Add/Modify"}}],"conditionParent":"NotNull"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_LINK_OPTIONS'),'','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_LINK_OPTIONS'),'','es',true);

INSERT INTO texts (default_text) VALUES ('Column Linked to Parent');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Linked to Parent');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna vinculada a la madre');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_PAGE'),'PM_TEAM_TABLE_LINK_STATUS',@lastid,'TABLE1','{"fieldObj":{"field":"productTeam","fieldChild":{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}},"conditionParent":"NotNull"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_LINK_STATUS'),'Link Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_LINK_STATUS'),'Estado del enlace','es',true);

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_PAGE'),'PM_TEAM_TABLE_NAME',@lastid,'TABLE1','{"field":"name"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Status');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_PAGE'),'PM_TEAM_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_PAGE'),'PM_TEAM_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa fa-pencil-square-o fa-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa fa-trash fa-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}},{"code":"ROLES","classField":"fa fa-user-plus fa-1","permission":{"ARDR":"W"},"label":{"en":"Roles"}},{"code":"MEMBERS","classField":"fa fa-user-plus fa-1","permission":{"ARDR":"W"},"label":{"en":"Members"}}]}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_TABLE_OPTIONS'),'Options','es',true);

-- Parent Team ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Product Team Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Product Team Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de equipo de producto');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_TEAM_PRODUCT_FORM',@lastid,'MEMBER');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_PRODUCT_FORM'),'PM_TEAM_PRODUCT_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.ProductTeam","field":"active","type":"Boolean"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_PRODUCT_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_PRODUCT_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');
