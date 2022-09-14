-- Roles ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Admin Role Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Role Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de rol de administrador');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_ROLE_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_FORM'),'ADMIN_ROLE_FORM_TITLE',@lastid,'MTXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.Role","field":"title","type":"Object","defaultClazz":{"clazz":"org.toasthub.security.model.Text","field":"defaultText","type":"String","method":"setTitleDefaultText"},"textClazz":{"clazz":"org.toasthub.security.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}],"method":"setTitleMtext"}}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_TITLE'),'','{"label":"Name:","defaultLabel":"Default Text:","textLabel":"Text:"}','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_TITLE'),'','{"label":"Nombre:","defaultLabel":"Texto predeterminado:","textLabel":"Texto:"}','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_FORM'),'ADMIN_ROLE_FORM_CODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.Role","field":"code","type":"String"}','',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_CODE'),'','Code:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_CODE'),'','Código:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Application');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Application');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitud');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_FORM'),'ADMIN_ROLE_FORM_APPLICATION',@lastid,'SLT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.Role","field":"applicationId","type":"Long","method":"setApplicationId","fieldChild":{"clazz":"org.toasthub.core.general.model.Application","type":"Object"}}','',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_APPLICATION'),'','Application:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_APPLICATION'),'','Solicitud','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_FORM'),'ADMIN_ROLE_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.Role","field":"active","type":"Boolean"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_ROLE_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');


INSERT INTO texts (default_text) VALUES ('Admin Role Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Role Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del permiso del administrador');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_ROLE_PAGE',@lastid,'ADMIN');

-- Text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_ROLE_PAGE_HEADER'),'Roles','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_ROLE_PAGE_HEADER'),'Permisos','es',true);


-- Admin Roles Table
INSERT INTO texts (default_text) VALUES ('Column Link Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Link Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Link Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_LINK_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY_USER_ROLE","classField":"fa-solid fa-link thub-1","permission":{"ARER":"R"},"label":{"en":"Add/Modify User Role"}}],"conditionParent":"NotNull"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_LINK_OPTIONS'),'','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_LINK_OPTIONS'),'','es',true);

INSERT INTO texts (default_text) VALUES ('Column Linked to User');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Linked to User');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna vinculada al usuario');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_ROLE_STATUS',@lastid,'TABLE1','{"fieldObj":{"field":"userRole","fieldChild":{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}},"conditionParent":"NotNull"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_STATUS'),'Link Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_STATUS'),'Estado del enlace','es',true);

INSERT INTO texts (default_text) VALUES ('Column User Role - Order');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column User Role - Order');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','ol de usuario de columna - Orden');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_ROLE_ORDER',@lastid,'TABLE1','{"fieldObj":{"field":"userRole","fieldChild":{"field":"order"}},"conditionParent":"NotNull"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_ORDER'),'Order','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_ORDER'),'Orden','es',true);

INSERT INTO texts (default_text) VALUES ('Column User Role - Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column User Role - Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rol de usuario de columna - Fecha de inicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_ROLE_STARTDATE',@lastid,'TABLE1','{"fieldObj":{"field":"userRole","fieldChild":{"fieldDate":"startDate"}},"conditionParent":"NotNull"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_STARTDATE'),'Start Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_STARTDATE'),'Fecha de inicio','es',true);

INSERT INTO texts (default_text) VALUES ('Column User Role - End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column User Role - End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rol de usuario de columna - Fecha de finalización');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_ROLE_ENDDATE',@lastid,'TABLE1','{"fieldObj":{"field":"userRole","fieldChild":{"fieldDate":"endDate"}},"conditionParent":"NotNull"}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_ENDDATE'),'End Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_ROLE_ENDDATE'),'Fecha final','es',true);

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_NAME',@lastid,'TABLE1','{"fieldML":"title"}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_CODE',@lastid,'TABLE1','{"field":"code"}',6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_CODE'),'Code','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_CODE'),'Código','es',true);

INSERT INTO texts (default_text) VALUES ('Column Application');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Application');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitud de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_APPLICATION',@lastid,'TABLE1','{"fieldObj":{"field":"application","fieldChild":{"fieldML":"title"}}}',7);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_APPLICATION'),'Application','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_APPLICATION'),'Solicitud','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',8);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLE_PAGE'),'ADMIN_ROLE_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa-regular fa-pen-to-square thub-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa-regular fa-trash-can thub-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}},{"code":"MODIFY_PERMISSION","classField":"fa-solid fa-key thub-1","permission":{"ARP":"R"},"label":{"en":"Permissions"}}]}',9);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_ROLE_TABLE_OPTIONS'),'Options','es',true);


-- User Roles ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Admin User Role Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin User Role Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de rol de usuario administrador');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_USER_ROLE_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Order');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Order');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Orden');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_ROLE_FORM'),'ADMIN_USER_ROLE_FORM_ORDER',@lastid,'INT','integer',0,0,null,'USER_ROLE_FORM',null,'{"clazz":"org.toasthub.security.model.UserRole","field":"order","type":"Integer"}','',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_ORDER'),'1','Order:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_ORDER'),'1','Orden:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha de inicio');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_ROLE_FORM'),'ADMIN_USER_ROLE_FORM_STARTDATE',@lastid,'DATE','date',0,0,null,'USER_ROLE_FORM',null,'{"clazz":"org.toasthub.security.model.UserRole","field":"startDate","type":"Date"}','',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Start Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Fecha de inicio:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha final');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_ROLE_FORM'),'ADMIN_USER_ROLE_FORM_ENDDATE',@lastid,'DATE','date',0,0,null,'USER_ROLE_FORM',null,'{"clazz":"org.toasthub.security.model.UserRole","field":"endDate","type":"Date"}','',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','End Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','Derechos de usuario:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USER_ROLE_FORM'),'ADMIN_USER_ROLE_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'USER_ROLE_FORM',null,'{"clazz":"org.toasthub.security.model.UserRole","field":"active","type":"Boolean"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_USER_ROLE_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');
