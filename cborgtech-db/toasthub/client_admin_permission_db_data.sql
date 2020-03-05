-- Permissions ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Admin Permission Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Permission Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de permiso de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_PERMISSION_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_FORM'),'ADMIN_PERMISSION_FORM_TITLE',@lastid,'MTXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.Permission","field":"title","type":"Object","defaultClazz":{"clazz":"org.toasthub.security.model.Text","field":"defaultText","type":"String","method":"setTitleDefaultText"},"textClazz":{"clazz":"org.toasthub.security.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}],"method":"setTitleMtext"}}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_TITLE'),'','{"label":"Name:","defaultLabel":"Default Text:","textLabel":"Text:"}','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_TITLE'),'','{"label":"Nombre:","defaultLabel":"Texto predeterminado:","textLabel":"Título:"}','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_FORM'),'ADMIN_PERMISSION_FORM_CODE',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.Permission","field":"code","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_CODE'),'','Code:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_CODE'),'','Código:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Derechos de usuario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_FORM'),'ADMIN_PERMISSION_FORM_RIGHTS',@lastid,'SLT','select',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.Permission","field":"rights","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_RIGHTS'),'{"options":[{"value":"R","text":"Read","defaultInd":true},{"value":"W","text":"Write"}]}','Rights:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_RIGHTS'),'{"options":[{"value":"R","text":"Leer","defaultInd":true},{"value":"W","text":"Escribir"}]}','Derechos de usuario:','es',true,true,2,'');


INSERT INTO texts (default_text) VALUES ('Application');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Application');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitud');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_FORM'),'ADMIN_PERMISSION_FORM_APPLICATION',@lastid,'SLT','select',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.Permission","field":"applicationId","type":"Long","method":"setApplicationId","fieldChild":{"clazz":"org.toasthub.core.general.model.Application","type":"Object"}}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_APPLICATION'),'','Application:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_APPLICATION'),'','Solicitud:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_FORM'),'ADMIN_PERMISSION_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.Permission","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","defaultInd":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_PERMISSION_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","defaultInd":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,4,'');

-- Admin Permissions Page
INSERT INTO texts (default_text) VALUES ('Admin Permission Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Permission Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del permiso del administrador');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_PERMISSION_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_PAGE'),'ADMIN_PERMISSION_PAGE_HEADER',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PERMISSION_PAGE_HEADER'),'Permissions','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PERMISSION_PAGE_HEADER'),'Permisos','es',true);

INSERT INTO texts (default_text) VALUES ('Page Header with Parent');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header with Parent');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página con padre');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_PAGE'),'ADMIN_PERMISSION_PAGE_HEADER_PARENT',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PERMISSION_PAGE_HEADER_PARENT'),'Permissions for Role: ','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PERMISSION_PAGE_HEADER_PARENT'),'Permisos para rol: ','es',true);

-- Admin Permissions Table
INSERT INTO texts (default_text) VALUES ('Admin Permission Table');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Permission Table');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tabla de permisos de administrador');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_PERMISSION_TABLE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Column Link Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Link Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Link Options');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_LINK_OPTIONS',@lastid,'{"fieldIcon":[{"icon":"option3","classField":"fa fa-link","permission":{"AUDU":"R"},"label":{"en":"Add/Modify Role Permission"}}],"conditionParent":"NotNull"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_LINK_OPTIONS'),'','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_LINK_OPTIONS'),'','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Linked to Role');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Linked to Role');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna vinculada al rol');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_ROLE_STATUS',@lastid,'{"fieldObj":{"field":"rolePermission","fieldChild":{"fieldBool":"active"}},"conditionParent":"NotNull"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_STATUS'),'Link Status','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_STATUS'),'Estado del enlace','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Role Permission - Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Role Permission - Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permiso de rol de columna - Derechos');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_ROLE_RIGHTS',@lastid,'{"fieldObj":{"field":"rolePermission","fieldChild":{"field":"rights"}},"conditionParent":"NotNull"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_RIGHTS'),'Rights','en',true,2);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_RIGHTS'),'Vinculada','es',true,2);

INSERT INTO texts (default_text) VALUES ('Column Role Permission - Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Role Permission - Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permiso de rol de columna - Fecha de inicio');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_ROLE_STARTDATE',@lastid,'{"fieldObj":{"field":"rolePermission","fieldChild":{"fieldDate":"startDate"}},"conditionParent":"NotNull"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_STARTDATE'),'Start Date','en',true,3);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_STARTDATE'),'Fecha de inicio','es',true,3);

INSERT INTO texts (default_text) VALUES ('Column Role Permission - End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Role Permission - End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Permiso de rol de columna: fecha de finalización');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_ROLE_ENDDATE',@lastid,'{"fieldObj":{"field":"rolePermission","fieldChild":{"fieldDate":"endDate"}},"conditionParent":"NotNull"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_ENDDATE'),'End Date','en',true,4);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_ROLE_ENDDATE'),'Fecha final','es',true,4);

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_NAME',@lastid,'{"fieldML":"title"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_NAME'),'Name','en',true,5);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_NAME'),'Nombre','es',true,5);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_CODE',@lastid,'{"field":"code"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_CODE'),'Code','en',true,6);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_CODE'),'Código','es',true,6);

INSERT INTO texts (default_text) VALUES ('Column Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Derechos de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_RIGHTS',@lastid,'{"field":"rights"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_RIGHTS'),'Default Rights','en',true,7);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_RIGHTS'),'Derechos predeterminados','es',true,7);

INSERT INTO texts (default_text) VALUES ('Column Application');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Application');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitud de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_APPLICATION',@lastid,'{"fieldObj":{"field":"application","fieldChild":{"fieldML":"title"}}}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_APPLICATION'),'Application','en',true,8);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_APPLICATION'),'Solicitud','es',true,8);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_STATUS',@lastid,'{"fieldBool":"active"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_STATUS'),'Status','en',true,9);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_STATUS'),'Estado','es',true,9);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PERMISSION_TABLE'),'ADMIN_PERMISSION_TABLE_OPTIONS',@lastid,'{"fieldIcon":[{"icon":"option1","classField":"fa fa-pencil-square-o","permission":{"AUEU":"R"},"label":{"en":"Modify"}},{"icon":"option2","classField":"fa fa-trash","permission":{"AUDU":"W"},"label":{"en":"Delete"}} ]}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_OPTIONS'),'Options','en',true,10);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PERMISSION_TABLE_OPTIONS'),'Options','es',true,10);


-- RolePermissions ----------------------------------------------------------------------
INSERT INTO texts (default_text) VALUES ('Admin Role Permission Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Role Permission Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de permiso de rol de administrador');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_ROLE_PERMISSION_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Derechos de usuario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM'),'ADMIN_ROLE_PERMISSION_FORM_RIGHTS',@lastid,'SLT','select',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.RolePermission","field":"rights","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_RIGHTS'),'{"options":[{"value":"R","text":"Read","defaultInd":true},{"value":"W","text":"Write"}]}','Rights:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_RIGHTS'),'{"options":[{"value":"R","text":"Leer","defaultInd":true},{"value":"W","text":"Escribir"}]}','Derechos de usuario:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha de inicio');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM'),'ADMIN_ROLE_PERMISSION_FORM_STARTDATE',@lastid,'DATE','date',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.RolePermission","field":"startDate","type":"Date"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Start Date:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_STARTDATE'),'2000-01-04T05:00:00.000Z','Fecha de inicio:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha final');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM'),'ADMIN_ROLE_PERMISSION_FORM_ENDDATE',@lastid,'DATE','date',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.RolePermission","field":"endDate","type":"Date"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','End Date:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_ENDDATE'),'2999-01-04T05:00:00.000Z','Derechos de usuario:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Active');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Activo');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM'),'ADMIN_ROLE_PERMISSION_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.security.model.RolePermission","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","defaultInd":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_ROLE_PERMISSION_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","defaultInd":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,4,'');


