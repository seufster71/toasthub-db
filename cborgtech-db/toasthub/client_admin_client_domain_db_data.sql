-- Client Domain
INSERT INTO texts (default_text) VALUES ('Admin Client Domain Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Client Domain Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de dominio del cliente Admin');
INSERT INTO page_name (name,text_id,category) VALUES ('SYSTEM_CLIENT_DOMAIN_FORM',@lastid,'SYSTEM');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_TITLE',@lastid,'GRP','text',0,0,null,'MAIN','MTITLE','{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"title","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_TITLE'),'','Name:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_TITLE'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Default Text Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":{"title":{"clazz":"org.toasthub.core.system.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Name Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":{"title":{"clazz":"org.toasthub.core.system.model.Text","field":{"langTexts":{"clazz":"org.toasthub.core.system.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('URL Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','URL Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio de URL');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_URL_DOMAIN',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"URLDomain","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_URL_DOMAIN'),'','URL Domain:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_URL_DOMAIN'),'','Dominio de URL:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('APP Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','API Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio APP');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_APP_DOMAIN',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"APPDomain","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_APP_DOMAIN'),'','APP Domain:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_APP_DOMAIN'),'','Dominio APP:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('APP Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','APP Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de la aplicación');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_APP_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"APPName","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_APP_NAME'),'','APP Name:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_APP_NAME'),'','Nombre de la aplicación:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('HTML Prefix');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','HTML Prefix');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prefijo HTML');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_HTML_PREFIX',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"HTMLPrefix","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_HTML_PREFIX'),'','HTML Prefix:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_HTML_PREFIX'),'','Prefijo HTML:','es',true,true,4,'');

INSERT INTO texts (default_text) VALUES ('Public Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Public Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Diseño público');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_PUBLIC_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"publicLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_PUBLIC_LAYOUT'),'','Public Layout:','en',true,true,5,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_PUBLIC_LAYOUT'),'','Diseño público:','es',true,true,5,'');

INSERT INTO texts (default_text) VALUES ('Admin Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Disposición del administrador');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_ADMIN_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"adminLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_ADMIN_LAYOUT'),'','Admin Layout:','en',true,true,6,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_ADMIN_LAYOUT'),'','Disposición del administrador:','es',true,true,6,'');

INSERT INTO texts (default_text) VALUES ('Member Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Disposición del Miembro');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_MEMBER_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"memberLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_MEMBER_LAYOUT'),'','Member Layout:','en',true,true,7,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_MEMBER_LAYOUT'),'','Disposición del Miembro:','es',true,true,7,'');

INSERT INTO texts (default_text) VALUES ('SysAdmin Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SysAdmin Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Diseño de SysAdmin');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_SYSADMIN_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"sysAdminLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_SYSADMIN_LAYOUT'),'','SysAdmin Layout:','en',true,true,8,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_SYSADMIN_LAYOUT'),'','Diseño de SysAdmin:','es',true,true,8,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM'),'SYSTEM_CLIENT_DOMAIN_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,4,'');

-- Admin Client Domain Page
INSERT INTO texts (default_text) VALUES ('Admin Client Domain Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Client Domain Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del dominio del cliente Admin');
INSERT INTO page_name (name,text_id,category) VALUES ('SYSTEM_CLIENT_DOMAIN_PAGE',@lastid,'SYSTEM');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_PAGE'),'SYSTEM_CLIENT_DOMAIN_PAGE_HEADER',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_PAGE_HEADER'),'Client Domains','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_PAGE_HEADER'),'Dominios de cliente','es',true);

-- System Client Domain Table
INSERT INTO texts (default_text) VALUES ('System Client Domain Table');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Client Domain Table');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tabla de client domain');
INSERT INTO page_name (name,text_id,category) VALUES ('SYSTEM_CLIENT_DOMAIN_TABLE',@lastid,'SYSTEM');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Name');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE'),'SYSTEM_CLIENT_DOMAIN_TABLE_NAME',@lastid,'{"fieldML":"title"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_NAME'),'Name','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_NAME'),'Nombre','es',true,0);

INSERT INTO texts (default_text) VALUES ('URL Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','URL Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','URL');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE'),'SYSTEM_CLIENT_DOMAIN_TABLE_URL_DOMAIN',@lastid,'{"field":"urldomain"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_URL_DOMAIN'),'URL Domain','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_URL_DOMAIN'),'Dominio de URL','es',true,1);

INSERT INTO texts (default_text) VALUES ('APP Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','APP Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','APP Domain');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE'),'SYSTEM_CLIENT_DOMAIN_TABLE_APP_DOMAIN',@lastid,'{"field":"appdomain"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_APP_DOMAIN'),'APP Domain','en',true,2);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_APP_DOMAIN'),'Dominio APP','es',true,2);

INSERT INTO texts (default_text) VALUES ('APP Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','APP Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','APP Name');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE'),'SYSTEM_CLIENT_DOMAIN_TABLE_APP_NAME',@lastid,'{"field":"appname"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_APP_NAME'),'APP Name','en',true,3);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_APP_NAME'),'Nombre de la aplicación','es',true,3);

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Status');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE'),'SYSTEM_CLIENT_DOMAIN_TABLE_STATUS',@lastid,'{"fieldBool":"active"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_STATUS'),'Status','en',true,4);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_CLIENT_DOMAIN_TABLE_STATUS'),'Estado','es',true,4);
