-- Client Domain
INSERT INTO texts (default_text) VALUES ('Admin Client Domain Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Client Domain Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de dominio del cliente Admin');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_CLIENT_DOMAIN_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_TITLE',@lastid,'GRP','text',0,0,null,'MAIN','MTITLE','{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"title","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_TITLE'),'','Name:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_TITLE'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Default Text Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":{"title":{"clazz":"org.toasthub.core.system.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Name Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":{"title":{"clazz":"org.toasthub.core.system.model.Text","field":{"langTexts":{"clazz":"org.toasthub.core.system.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('URL Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','URL Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio de URL');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_URL_DOMAIN',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"URLDomain","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_URL_DOMAIN'),'','URL Domain:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_URL_DOMAIN'),'','Dominio de URL:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('APP Domain');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','API Domain');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dominio APP');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_APP_DOMAIN',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"APPDomain","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_APP_DOMAIN'),'','APP Domain:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_APP_DOMAIN'),'','Dominio APP:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('APP Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','APP Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de la aplicación');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_APP_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"APPName","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_APP_NAME'),'','APP Name:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_APP_NAME'),'','Nombre de la aplicación:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('HTML Prefix');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','HTML Prefix');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prefijo HTML');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_HTML_PREFIX',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"HTMLPrefix","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_HTML_PREFIX'),'','HTML Prefix:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_HTML_PREFIX'),'','Prefijo HTML:','es',true,true,4,'');

INSERT INTO texts (default_text) VALUES ('Public Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Public Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Diseño público');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_PUBLIC_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"publicLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_PUBLIC_LAYOUT'),'','Public Layout:','en',true,true,5,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_PUBLIC_LAYOUT'),'','Diseño público:','es',true,true,5,'');

INSERT INTO texts (default_text) VALUES ('Admin Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Disposición del administrador');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_ADMIN_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"adminLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_ADMIN_LAYOUT'),'','Admin Layout:','en',true,true,6,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_ADMIN_LAYOUT'),'','Disposición del administrador:','es',true,true,6,'');

INSERT INTO texts (default_text) VALUES ('Member Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Disposición del Miembro');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_MEMBER_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"memberLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_MEMBER_LAYOUT'),'','Member Layout:','en',true,true,7,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_MEMBER_LAYOUT'),'','Disposición del Miembro:','es',true,true,7,'');

INSERT INTO texts (default_text) VALUES ('SysAdmin Layout');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SysAdmin Layout');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Diseño de SysAdmin');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_SYSADMIN_LAYOUT',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"sysAdminLayout","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_SYSADMIN_LAYOUT'),'','SysAdmin Layout:','en',true,true,8,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_SYSADMIN_LAYOUT'),'','Diseño de SysAdmin:','es',true,true,8,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM'),'ADMIN_CLIENT_DOMAIN_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.system.model.ClientDomain","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CLIENT_DOMAIN_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,4,'');

-- Admin Client Domain Page
INSERT INTO texts (default_text) VALUES ('Admin Client Domain Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Client Domain Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del dominio del cliente Admin');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_CLIENT_DOMAIN_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE'),'ADMIN_CLIENT_DOMAIN_PAGE_HEADER',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_HEADER'),'Client Domains','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_HEADER'),'Dominios de cliente','es',true);

INSERT INTO texts (default_text) VALUES ('List Column 1');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 1');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 1');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE'),'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_1',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_1'),'Name','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_1'),'Nombre','es',true,0);

INSERT INTO texts (default_text) VALUES ('List Column 2');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 2');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 2');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE'),'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_2',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_2'),'URL Domain','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_2'),'Dominio de URL','es',true,1);

INSERT INTO texts (default_text) VALUES ('List Column 3');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 3');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 3');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE'),'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_3',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_3'),'APP Domain','en',true,2);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_3'),'Dominio APP','es',true,2);

INSERT INTO texts (default_text) VALUES ('List Column 4');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 4');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 4');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE'),'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_4',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_4'),'APP Name','en',true,3);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_4'),'Nombre de la aplicación','es',true,3);

INSERT INTO texts (default_text) VALUES ('List Column 5');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 5');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 5');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE'),'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_5',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_5'),'Status','en',true,4);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CLIENT_DOMAIN_PAGE_COLUMN_5'),'Estado','es',true,4);
