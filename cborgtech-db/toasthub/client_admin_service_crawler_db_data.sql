
-- Service Crawler
INSERT INTO texts (default_text) VALUES ('Admin Service Crawler Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service Crawler Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de rastreador de servicio de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('SYSTEM_SERVICE_CRAWLER_FORM',@lastid,'SYSTEM');

INSERT INTO texts (default_text) VALUES ('Service name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Service name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre del Servicio');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM'),'SYSTEM_SERVICE_CRAWLER_FORM_SERVICE_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"serviceName","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_SERVICE_NAME'),'','Service name:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_SERVICE_NAME'),'','Nombre del Servicio:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('API Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','API Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de la API');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM'),'SYSTEM_SERVICE_CRAWLER_FORM_API_VERSION',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"apiVersion","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_API_VERSION'),'','API Version:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_API_VERSION'),'','Versión de la API:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('APP Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','APP Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Version de aplicacion');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM'),'SYSTEM_SERVICE_CRAWLER_FORM_APP_VERSION',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"appVersion","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_APP_VERSION'),'','APP Version:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_APP_VERSION'),'','Version de aplicacion:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Class name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Class name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de la clase');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM'),'SYSTEM_SERVICE_CRAWLER_FORM_CLASS_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"className","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_CLASS_NAME'),'','Class name:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_CLASS_NAME'),'','Nombre de la clase:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM'),'SYSTEM_SERVICE_CRAWLER_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,4,'');

INSERT INTO texts (default_text) VALUES ('Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM'),'SYSTEM_SERVICE_CRAWLER_FORM_CATEGORY',@lastid,'SLT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"category","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"SYSTEM","label":"SYSTEM"},{"value":"LOGIN","label":"LOGIN"}]}','Category:','en',true,true,5,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"SYSTEM","label":"SYSTEM"},{"value":"LOGIN","label":"LOGIN"}]}','Categoría:','es',true,true,5,'');

INSERT INTO texts (default_text) VALUES ('Location');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Location');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ubicación');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM'),'SYSTEM_SERVICE_CRAWLER_FORM_LOCATION',@lastid,'SLT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"location","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_LOCATION'),'{"options":[{"value":"LOCAL","label":"Local","default":true},{"value":"REMOTE","label":"Remote"}]}','Location:','en',true,true,6,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_FORM_LOCATION'),'{"options":[{"value":"LOCAL","label":"Local","default":true},{"value":"REMOTE","label":"Remoto"}]}','Ubicación:','es',true,true,6,'');


-- Admin Service crawler Page
INSERT INTO texts (default_text) VALUES ('Admin Service Crawler Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service Crawler Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del rastreador del servicio de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('SYSTEM_SERVICE_CRAWLER_PAGE',@lastid,'SYSTEM');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_PAGE'),'SYSTEM_SERVICE_CRAWLER_PAGE_HEADER',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_PAGE_HEADER'),'Services','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_PAGE_HEADER'),'Servicios','es',true);

-- Admin Service crawler Table
INSERT INTO texts (default_text) VALUES ('Admin Service Crawler Table');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service Crawler Table');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tabla de rastreador de servicio de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('SYSTEM_SERVICE_CRAWLER_TABLE',@lastid,'SYSTEM');

INSERT INTO texts (default_text) VALUES ('Column Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE'),'SYSTEM_SERVICE_CRAWLER_TABLE_CATEGORY',@lastid,'{"field":"category"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_CATEGORY'),'Category','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_CATEGORY'),'Categoría','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Service Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Service Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre del servicio de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE'),'SYSTEM_SERVICE_CRAWLER_TABLE_SERVICENAME',@lastid,'{"field":"serviceName"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_SERVICENAME'),'Service name','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_SERVICENAME'),'Nombre del Servicio','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Api Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Api Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de columna Api');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE'),'SYSTEM_SERVICE_CRAWLER_TABLE_APIVERSION',@lastid,'{"field":"apiVersion"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_APIVERSION'),'API Version','en',true,2);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_APIVERSION'),'Versión de la API','es',true,2);

INSERT INTO texts (default_text) VALUES ('Column App Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column App Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de la aplicación de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE'),'SYSTEM_SERVICE_CRAWLER_TABLE_APPVERSION',@lastid,'{"field":"appVersion"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_APPVERSION'),'APP Version','en',true,3);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_APPVERSION'),'Version de aplicacion','es',true,3);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE'),'SYSTEM_SERVICE_CRAWLER_TABLE_STATUS',@lastid,'{"fieldBool":"active"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_STATUS'),'Status','en',true,4);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'SYSTEM_SERVICE_CRAWLER_TABLE_STATUS'),'Estado','es',true,4);
