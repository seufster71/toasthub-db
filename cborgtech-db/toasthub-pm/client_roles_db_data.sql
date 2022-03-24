-- Roles ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Role Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Role Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de rol');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_TEAM_ROLE_FORM',@lastid,'MEMBER');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_ROLE_FORM'),'PM_TEAM_ROLE_FORM_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Role","field":"name","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_ROLE_FORM_NAME'),'','Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_ROLE_FORM_NAME'),'','Nombre:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_ROLE_FORM'),'PM_TEAM_ROLE_FORM_CODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Role","field":"code","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_ROLE_FORM_CODE'),'','Code:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TEAM_ROLE_FORM_CODE'),'','Código:','es',true,true,'');


-- Team Role
INSERT INTO texts (default_text) VALUES ('Role Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Role Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de rol');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_TEAM_ROLE_PAGE',@lastid,'MEMBER');

-- Text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_ROLE_PAGE'),'PM_TEAM_ROLE_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_TEAM_ROLE_PAGE_HEADER'),'Team Roles','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_TEAM_ROLE_PAGE_HEADER'),'Roles de equipo','es',true);

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_ROLE_PAGE'),'PM_TEAM_ROLE_TABLE_NAME',@lastid,'TABLE1','{"field":"name"}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_ROLE_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_ROLE_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_ROLE_PAGE'),'PM_TEAM_ROLE_TABLE_CODE',@lastid,'TABLE1','{"field":"code"}',6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_ROLE_TABLE_CODE'),'Code','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_ROLE_TABLE_CODE'),'Código','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TEAM_ROLE_PAGE'),'PM_TEAM_ROLE_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY_TEAM_ROLE","classField":"fa fa-pencil-square-o fa-1","permission":{"ARER":"R"},"label":{"en":"Modify"},"lock":"locked"},{"code":"DELETE","classField":"fa fa-trash fa-1","permission":{"ARDR":"W"},"label":{"en":"Delete"},"lock":"locked"},{"code":"PERMISSIONS","classField":"fa fa-key fa-1","permission":{"ARP":"R"},"label":{"en":"Permissions"}}]}',9);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_ROLE_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TEAM_ROLE_TABLE_OPTIONS'),'Options','es',true);


-- Member Role
INSERT INTO texts (default_text) VALUES ('Role Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Role Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de rol');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_MEMBER_ROLE_PAGE',@lastid,'MEMBER');

-- Text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_MEMBER_ROLE_PAGE_HEADER'),'Member Roles','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_MEMBER_ROLE_PAGE_HEADER'),'Funciones de los miembros','es',true);

INSERT INTO texts (default_text) VALUES ('Column Link Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Link Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Link Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_LINK_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY_MEMBER_ROLE","classField":"fa fa-link fa-1","permission":{"ARER":"R"},"label":{"en":"Add/Modify Team member Role"}}],"conditionParent":"NotNull"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_LINK_OPTIONS'),'','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_LINK_OPTIONS'),'','es',true);

INSERT INTO texts (default_text) VALUES ('Column Linked to Member');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Linked to Member');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna vinculada a la miembro');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_MEMBER_STATUS',@lastid,'TABLE1','{"fieldObj":{"field":"memberRole","fieldChild":{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}},"conditionParent":"NotNull"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_STATUS'),'Link Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_STATUS'),'Estado del enlace','es',true);

INSERT INTO texts (default_text) VALUES ('Column Member Role - Order');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Member Role - Order');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rol de miembro de columna - Orden');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_MEMBER_ORDER',@lastid,'TABLE1','{"fieldObj":{"field":"memberRole","fieldChild":{"field":"sortOrder"}},"conditionParent":"NotNull"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_ORDER'),'Order','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_ORDER'),'Orden','es',true);

INSERT INTO texts (default_text) VALUES ('Column Member Role - Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Member Role - Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rol de miembro de columna - Fecha de inicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_MEMBER_STARTDATE',@lastid,'TABLE1','{"fieldObj":{"field":"memberRole","fieldChild":{"fieldDate":"startDate"}},"conditionParent":"NotNull"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_STARTDATE'),'Start Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_STARTDATE'),'Fecha de inicio','es',true);

INSERT INTO texts (default_text) VALUES ('Column Member Role - End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Member Role - End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rol de miembro de columna - Fecha de finalización');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_MEMBER_ENDDATE',@lastid,'TABLE1','{"fieldObj":{"field":"memberRole","fieldChild":{"fieldDate":"endDate"}},"conditionParent":"NotNull"}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_ENDDATE'),'End Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_MEMBER_ENDDATE'),'Fecha final','es',true);

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_NAME',@lastid,'TABLE1','{"field":"name"}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_CODE',@lastid,'TABLE1','{"field":"code"}',6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_CODE'),'Code','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_CODE'),'Código','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',8);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_PAGE'),'PM_MEMBER_ROLE_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY_MEMBER_ROLE","classField":"fa fa-pencil-square-o fa-1","permission":{"ARER":"R"},"label":{"en":"Modify"},"lock":"locked"},{"code":"DELETE","classField":"fa fa-trash fa-1","permission":{"ARDR":"W"},"label":{"en":"Delete"},"lock":"locked"},{"code":"PERMISSIONS","classField":"fa fa-key fa-1","permission":{"ARP":"R"},"label":{"en":"Permissions"}}]}',9);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_MEMBER_ROLE_TABLE_OPTIONS'),'Options','es',true);


-- Member Roles ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Admin  Member Role Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin  Member Role Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de rol de miembro del equipo de administración');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_MEMBER_ROLE_FORM',@lastid,'MEMBER');

INSERT INTO texts (default_text) VALUES ('Order');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Order');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Orden');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_FORM'),'PM_MEMBER_ROLE_FORM_ORDER',@lastid,'INT','integer',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.MemberRole","field":"sortOrder","type":"Integer"}','',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_ORDER'),'1','Order:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_ORDER'),'1','Orden:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha de inicio');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_FORM'),'PM_MEMBER_ROLE_FORM_STARTDATE',@lastid,'DATE','date',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.MemberRole","field":"startDate","type":"Date"}','',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Start Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Fecha de inicio:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha final');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_FORM'),'PM_MEMBER_ROLE_FORM_ENDDATE',@lastid,'DATE','date',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.MemberRole","field":"endDate","type":"Date"}','',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','End Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','Derechos de usuario:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_MEMBER_ROLE_FORM'),'PM_MEMBER_ROLE_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.MemberRole","field":"active","type":"Boolean"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_MEMBER_ROLE_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');











