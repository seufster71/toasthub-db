
-- Service Crawler
INSERT INTO texts (default_text) VALUES ('Admin Service Crawler Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service Crawler Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de rastreador de servicio de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_SERVICE_CRAWLER_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Service name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Service name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre del Servicio');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM'),'ADMIN_SERVICE_CRAWLER_FORM_SERVICE_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"serviceName","type":"String"}','{"modify":"disabled"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_SERVICE_NAME'),'','Service name:','en',true,true,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_SERVICE_NAME'),'','Nombre del Servicio:','es',true,true,0,'',null);

INSERT INTO texts (default_text) VALUES ('API Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','API Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de la API');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM'),'ADMIN_SERVICE_CRAWLER_FORM_API_VERSION',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"apiVersion","type":"String"}','{"modify":"disabled"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_API_VERSION'),'','API Version:','en',true,true,1,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_API_VERSION'),'','Versión de la API:','es',true,true,1,'',null);

INSERT INTO texts (default_text) VALUES ('APP Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','APP Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Version de aplicacion');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM'),'ADMIN_SERVICE_CRAWLER_FORM_APP_VERSION',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"appVersion","type":"String"}','{"modify":"disabled"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_APP_VERSION'),'','APP Version:','en',true,true,2,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_APP_VERSION'),'','Version de aplicacion:','es',true,true,2,'',null);

INSERT INTO texts (default_text) VALUES ('Class name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Class name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de la clase');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM'),'ADMIN_SERVICE_CRAWLER_FORM_CLASS_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"className","type":"String"}',null,null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_CLASS_NAME'),'','Class name:','en',true,true,3,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_CLASS_NAME'),'','Nombre de la clase:','es',true,true,3,'',null);

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM'),'ADMIN_SERVICE_CRAWLER_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"active","type":"Boolean"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,4,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,4,'',null);

INSERT INTO texts (default_text) VALUES ('Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM'),'ADMIN_SERVICE_CRAWLER_FORM_CATEGORY',@lastid,'SLT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"category","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"SYSADMIN","label":"SYSADMIN"},{"value":"LOGIN","label":"LOGIN"}]}','Category:','en',true,true,5,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"SYSADMIN","label":"SYSADMIN"},{"value":"LOGIN","label":"LOGIN"}]}','Categoría:','es',true,true,5,'',null);

INSERT INTO texts (default_text) VALUES ('Location');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Location');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ubicación');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM'),'ADMIN_SERVICE_CRAWLER_FORM_LOCATION',@lastid,'SLT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"location","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_LOCATION'),'{"options":[{"value":"LOCAL","label":"Local","default":true},{"value":"REMOTE","label":"Remote"}]}','Location:','en',true,true,6,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_SERVICE_CRAWLER_FORM_LOCATION'),'{"options":[{"value":"LOCAL","label":"Local","default":true},{"value":"REMOTE","label":"Remoto"}]}','Ubicación:','es',true,true,6,'',null);


-- Admin Service crawler Page
INSERT INTO texts (default_text) VALUES ('Admin Service Crawler Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service Crawler Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del rastreador del servicio de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_SERVICE_CRAWLER_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE'),'ADMIN_SERVICE_CRAWLER_PAGE_HEADER',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_HEADER'),'Services','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_HEADER'),'Servicios','es',true,null);

INSERT INTO texts (default_text) VALUES ('List Column 1');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 1');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 1');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE'),'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_1',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_1'),'Category','en',true,0,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_1'),'Categoría','es',true,0,null);

INSERT INTO texts (default_text) VALUES ('List Column 2');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 2');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 2');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE'),'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_2',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_2'),'Service name','en',true,1,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_2'),'Nombre del Servicio','es',true,1,null);

INSERT INTO texts (default_text) VALUES ('List Column 3');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 3');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 3');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE'),'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_3',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_3'),'API Version','en',true,2,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_3'),'Versión de la API','es',true,2,null);

INSERT INTO texts (default_text) VALUES ('List Column 4');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 4');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 4');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE'),'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_4',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_4'),'APP Version','en',true,3,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_4'),'Version de aplicacion','es',true,3,null);

INSERT INTO texts (default_text) VALUES ('List Column 5');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','List Column 5');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna de lista 5');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE'),'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_5',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_5'),'Status','en',true,4,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_SERVICE_CRAWLER_PAGE_COLUMN_5'),'Estado','es',true,4,null);
