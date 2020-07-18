-- Permissions ----------------------------------------------------------------------
-- Form
INSERT INTO texts (default_text) VALUES ('Permission Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Permission Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de permiso');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_PERMISSION_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_FORM'),'PM_PERMISSION_FORM_NAME',@lastid,'MTXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Permission","field":"name","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_PERMISSION_FORM_NAME'),'','Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_PERMISSION_FORM_NAME'),'','Nombre:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_FORM'),'PM_PERMISSION_FORM_CODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Permission","field":"code","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_PERMISSION_FORM_CODE'),'','Code:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_PERMISSION_FORM_CODE'),'','Código:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_FORM'),'PM_PERMISSION_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Permission","field":"active","type":"Boolean"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_PERMISSION_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_PERMISSION_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');

-- Page
INSERT INTO texts (default_text) VALUES ('Permission Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Permission Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de permiso');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_PERMISSION_PAGE',@lastid,'ADMIN');

-- Text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_PERMISSION_PAGE_HEADER'),'Permissions','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_PERMISSION_PAGE_HEADER'),'Permisos','es',true);


-- Table
INSERT INTO texts (default_text) VALUES ('Column Link Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Link Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Link Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_LINK_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY_ROLE_PERMISSION","classField":"fa fa-link fa-1","permission":{"AUDU":"R"},"label":{"en":"Add/Modify Role Permission"}}],"conditionParent":"NotNull"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_LINK_OPTIONS'),'','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_LINK_OPTIONS'),'','es',true);

INSERT INTO texts (default_text) VALUES ('Column Linked to Role');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Linked to Role');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna vinculada al rol');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_ROLE_STATUS',@lastid,'TABLE1','{"fieldObj":{"field":"rolePermission","fieldChild":{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}},"conditionParent":"NotNull"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_STATUS'),'Link Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_STATUS'),'Estado del enlace','es',true);

INSERT INTO texts (default_text) VALUES ('Column Role Permission - Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Role Permission - Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permiso de rol de columna - Derechos');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_ROLE_RIGHTS',@lastid,'TABLE1','{"fieldObj":{"field":"rolePermission","fieldChild":{"field":"rights"}},"conditionParent":"NotNull"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_RIGHTS'),'Rights','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_RIGHTS'),'Vinculada','es',true);

INSERT INTO texts (default_text) VALUES ('Column Role Permission - Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Role Permission - Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permiso de rol de columna - Fecha de inicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_ROLE_STARTDATE',@lastid,'TABLE1','{"fieldObj":{"field":"rolePermission","fieldChild":{"fieldDate":"startDate"}},"conditionParent":"NotNull"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_STARTDATE'),'Start Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_STARTDATE'),'Fecha de inicio','es',true);

INSERT INTO texts (default_text) VALUES ('Column Role Permission - End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Role Permission - End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permiso de rol de columna: fecha de finalización');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_ROLE_ENDDATE',@lastid,'TABLE1','{"fieldObj":{"field":"rolePermission","fieldChild":{"fieldDate":"endDate"}},"conditionParent":"NotNull"}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_ENDDATE'),'End Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_ROLE_ENDDATE'),'Fecha final','es',true);

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_NAME',@lastid,'TABLE1','{"fieldML":"name"}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_CODE',@lastid,'TABLE1','{"field":"code"}',6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_CODE'),'Code','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_CODE'),'Código','es',true);

INSERT INTO texts (default_text) VALUES ('Column Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Derechos de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_RIGHTS',@lastid,'TABLE1','{"field":"rights"}',7);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_RIGHTS'),'Default Rights','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_RIGHTS'),'Derechos predeterminados','es',true);

INSERT INTO texts (default_text) VALUES ('Column Application');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Application');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitud de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_APPLICATION',@lastid,'TABLE1','{"fieldObj":{"field":"application","fieldChild":{"fieldML":"title"}}}',8);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_APPLICATION'),'Application','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_APPLICATION'),'Solicitud','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',9);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_PERMISSION_PAGE'),'PM_PERMISSION_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa fa-pencil-square-o fa-1","permission":{"AUEU":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa fa-trash fa-1","permission":{"AUDU":"W"},"label":{"en":"Delete"}} ]}',10);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_PERMISSION_TABLE_OPTIONS'),'Options','es',true);


-- RolePermissions ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Role Permission Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Role Permission Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de permiso de rol');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_ROLE_PERMISSION_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Derechos de usuario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ROLE_PERMISSION_FORM'),'PM_ROLE_PERMISSION_FORM_RIGHTS',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.RolePermission","field":"rights","type":"String"}','',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_RIGHTS'),'{"options":[{"value":"R","label":"Read","defaultInd":true},{"value":"W","label":"Write"}]}','Rights:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_RIGHTS'),'{"options":[{"value":"R","label":"Leer","defaultInd":true},{"value":"W","label":"Escribir"}]}','Derechos de usuario:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha de inicio');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ROLE_PERMISSION_FORM'),'PM_ROLE_PERMISSION_FORM_STARTDATE',@lastid,'DATE','date',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.RolePermission","field":"startDate","type":"Date"}','',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Start Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Fecha de inicio:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha final');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ROLE_PERMISSION_FORM'),'PM_ROLE_PERMISSION_FORM_ENDDATE',@lastid,'DATE','date',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.RolePermission","field":"endDate","type":"Date"}','',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','End Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','Derechos de usuario:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ROLE_PERMISSION_FORM'),'PM_ROLE_PERMISSION_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.RolePermission","field":"active","type":"Boolean"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ROLE_PERMISSION_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');


-- Default permissions
INSERT INTO pm_permission (name,code) VALUES ('PM Product view','PMPRODUCTV');
INSERT INTO pm_permission (name,code) VALUES ('PM Product create','PMPRODUCTC');
INSERT INTO pm_permission (name,code) VALUES ('PM Product modify','PMPRODUCTM');
INSERT INTO pm_permission (name,code) VALUES ('PM Product delete','PMPRODUCTD');

INSERT INTO pm_permission (name,code) VALUES ('PM Project view','PMPROJECTV');
INSERT INTO pm_permission (name,code) VALUES ('PM Project create','PMPROJECTC');
INSERT INTO pm_permission (name,code) VALUES ('PM Project modify','PMPROJECTM');
INSERT INTO pm_permission (name,code) VALUES ('PM Project delete','PMPROJECTD');

INSERT INTO pm_permission (name,code) VALUES ('PM Backlog view','PMBACKLOGV');
INSERT INTO pm_permission (name,code) VALUES ('PM Backlog create','PMBACKLOGC');
INSERT INTO pm_permission (name,code) VALUES ('PM Backlog modify','PMBACKLOGM');
INSERT INTO pm_permission (name,code) VALUES ('PM Backlog delete','PMBACKLOGD');

INSERT INTO pm_permission (name,code) VALUES ('PM Comment view','PMCOMMENTV');
INSERT INTO pm_permission (name,code) VALUES ('PM Comment create','PMCOMMENTC');
INSERT INTO pm_permission (name,code) VALUES ('PM Comment modify','PMCOMMENTM');
INSERT INTO pm_permission (name,code) VALUES ('PM Comment delete','PMCOMMENTD');

INSERT INTO pm_permission (name,code) VALUES ('PM Defect view','PMDEFECTV');
INSERT INTO pm_permission (name,code) VALUES ('PM Defect create','PMDEFECTC');
INSERT INTO pm_permission (name,code) VALUES ('PM Defect modify','PMDEFECTM');
INSERT INTO pm_permission (name,code) VALUES ('PM Defect delete','PMDEFECTD');

INSERT INTO pm_permission (name,code) VALUES ('PM Enhancment view','PMENHANCEMENTV');
INSERT INTO pm_permission (name,code) VALUES ('PM Enhancment create','PMENHANCEMENTC');
INSERT INTO pm_permission (name,code) VALUES ('PM Enhancment modify','PMENHANCEMENTM');
INSERT INTO pm_permission (name,code) VALUES ('PM Enhancment delete','PMENHANCEMENTD');

INSERT INTO pm_permission (name,code) VALUES ('PM Release view','PMRELEASEV');
INSERT INTO pm_permission (name,code) VALUES ('PM Release create','PMRELEASEC');
INSERT INTO pm_permission (name,code) VALUES ('PM Release modify','PMRELEASEM');
INSERT INTO pm_permission (name,code) VALUES ('PM Release delete','PMRELEASED');

INSERT INTO pm_permission (name,code) VALUES ('PM Role view','PMROLEV');
INSERT INTO pm_permission (name,code) VALUES ('PM Role create','PMROLEC');
INSERT INTO pm_permission (name,code) VALUES ('PM Role modify','PMROLEM');
INSERT INTO pm_permission (name,code) VALUES ('PM Role delete','PMROLED');

INSERT INTO pm_permission (name,code) VALUES ('PM Permission view','PMPERMISSIONV');
INSERT INTO pm_permission (name,code) VALUES ('PM Permission create','PMPERMISSIONC');
INSERT INTO pm_permission (name,code) VALUES ('PM Permission modify','PMPERMISSIONM');
INSERT INTO pm_permission (name,code) VALUES ('PM Permission delete','PMPERMISSIOND');

INSERT INTO pm_permission (name,code) VALUES ('PM Scrum view','PMSCRUMV');
INSERT INTO pm_permission (name,code) VALUES ('PM Scrum create','PMSCRUMC');
INSERT INTO pm_permission (name,code) VALUES ('PM Scrum modify','PMSCRUMM');
INSERT INTO pm_permission (name,code) VALUES ('PM Scrum delete','PMSCRUMD');

INSERT INTO pm_permission (name,code) VALUES ('PM Sprint view','PMSPRINTV');
INSERT INTO pm_permission (name,code) VALUES ('PM Sprint create','PMSPRINTC');
INSERT INTO pm_permission (name,code) VALUES ('PM Sprint modify','PMSPRINTM');
INSERT INTO pm_permission (name,code) VALUES ('PM Sprint delete','PMSPRINTD');

INSERT INTO pm_permission (name,code) VALUES ('PM Task view','PMTASKV');
INSERT INTO pm_permission (name,code) VALUES ('PM Task create','PMTASKC');
INSERT INTO pm_permission (name,code) VALUES ('PM Task modify','PMTASKM');
INSERT INTO pm_permission (name,code) VALUES ('PM Task delete','PMTASKD');

INSERT INTO pm_permission (name,code) VALUES ('PM Team view','PMTEAMV');
INSERT INTO pm_permission (name,code) VALUES ('PM Team create','PMTEAMC');
INSERT INTO pm_permission (name,code) VALUES ('PM Team modify','PMTEAMM');
INSERT INTO pm_permission (name,code) VALUES ('PM Team delete','PMTEAMD');

INSERT INTO pm_permission (name,code) VALUES ('PM Team Member view','PMTEAMMEMBERV');
INSERT INTO pm_permission (name,code) VALUES ('PM Team Member create','PMTEAMMEMBERC');
INSERT INTO pm_permission (name,code) VALUES ('PM Team Member modify','PMTEAMMEMBERM');
INSERT INTO pm_permission (name,code) VALUES ('PM Team Member delete','PMTEAMMEMBERD');

INSERT INTO pm_permission (name,code) VALUES ('PM Test Case view','PMTESTCASEV');
INSERT INTO pm_permission (name,code) VALUES ('PM Test Case create','PMTESTCASEC');
INSERT INTO pm_permission (name,code) VALUES ('PM Test Case modify','PMTESTCASEM');
INSERT INTO pm_permission (name,code) VALUES ('PM Test Case delete','PMTESTCASED');

INSERT INTO pm_permission (name,code) VALUES ('PM Test Scenario view','PMTESTSCENARIOV');
INSERT INTO pm_permission (name,code) VALUES ('PM Test Scenario create','PMTESTSCENARIOC');
INSERT INTO pm_permission (name,code) VALUES ('PM Test Scenario modify','PMTESTSCENARIOM');
INSERT INTO pm_permission (name,code) VALUES ('PM Test Scenario delete','PMTESTSCENARIOD');

INSERT INTO pm_permission (name,code) VALUES ('PM Workflow view','PMWORKFLOWV');
INSERT INTO pm_permission (name,code) VALUES ('PM Workflow create','PMWORKFLOWC');
INSERT INTO pm_permission (name,code) VALUES ('PM Workflow modify','PMWORKFLOWM');
INSERT INTO pm_permission (name,code) VALUES ('PM Workflow delete','PMWORKFLOWD');


