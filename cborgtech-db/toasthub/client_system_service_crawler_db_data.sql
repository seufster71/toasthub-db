
-- Services Page
INSERT INTO texts (default_text) VALUES ('System Services Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','System Services Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de servicios del sistema');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'SYSTEM_SERVICES_FORM',@lastid,'ADMIN');

-- FORM
INSERT INTO texts (default_text) VALUES ('Service name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Service name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre del Servicio');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_SERVICE_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"serviceName","type":"String"}','{"modify":"disabled"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_SERVICE_NAME'),'','Service name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_SERVICE_NAME'),'','Nombre del Servicio:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('API Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','API Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de la API');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_API_VERSION',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"apiVersion","type":"String"}','{"modify":"disabled"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_API_VERSION'),'','API Version:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_API_VERSION'),'','Versión de la API:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('APP Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','APP Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Version de aplicacion');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_APP_VERSION',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"appVersion","type":"String"}','{"modify":"disabled"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_APP_VERSION'),'','APP Version:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_APP_VERSION'),'','Version de aplicacion:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Class name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Class name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de la clase');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_CLASS_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"className","type":"String"}','{"modify":"disabled"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_CLASS_NAME'),'','Class name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_CLASS_NAME'),'','Nombre de la clase:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"active","type":"Boolean"}',4);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_CATEGORY',@lastid,'SLT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"category","type":"String"}',5);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"ADMIN","label":"ADMIN"},{"value":"LOGIN","label":"LOGIN"}]}','Category:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"ADMIN","label":"ADMIN"},{"value":"LOGIN","label":"LOGIN"}]}','Categoría:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Location');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Location');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ubicación');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_LOCATION',@lastid,'SLT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"location","type":"String"}',6);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_LOCATION'),'{"options":[{"value":"LOCAL","label":"Local","default":true},{"value":"REMOTE","label":"Remote"}]}','Location:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_LOCATION'),'{"options":[{"value":"LOCAL","label":"Local","default":true},{"value":"REMOTE","label":"Remoto"}]}','Ubicación:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Permission Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Permission Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de permiso');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_PERMISSION_CODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"permissionCode","type":"String"}',7);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_PERMISSION_CODE'),'','Permission Code:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_PERMISSION_CODE'),'','Código de permiso:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Permission Rights');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Permission Rights');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Derechos de permiso');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_FORM'),'SYSTEM_SERVICES_FORM_PERMISSION_RIGHTS',@lastid,'SLT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.ServiceClass","field":"permissionRight","type":"String"}',8);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_PERMISSION_RIGHTS'),'{"options":[{"value":"R","label":"Read","default":true},{"value":"W","label":"Write"}]}','Permission Rights:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_SERVICES_FORM_PERMISSION_RIGHTS'),'{"options":[{"value":"R","label":"Leer","default":true},{"value":"W","label":"Escribir"}]}','Derechos de permiso:','es',true,true,'');

-- Admin Service Page

INSERT INTO texts (default_text) VALUES ('Admin Service Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Service Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página del servicio de administración');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'SYSTEM_SERVICES_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_PAGE'),'SYSTEM_SERVICES_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SYSTEM_SERVICES_PAGE_HEADER'),'Services','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SYSTEM_SERVICES_PAGE_HEADER'),'Servicios','es',true);


-- Admin Service Table

INSERT INTO texts (default_text) VALUES ('Column Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_PAGE'),'SYSTEM_SERVICES_TABLE_CATEGORY',@lastid,'TABLE1','{"field":"category"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_CATEGORY'),'Category','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_CATEGORY'),'Categoría','es',true);

INSERT INTO texts (default_text) VALUES ('Column Service Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Service Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre del servicio de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_PAGE'),'SYSTEM_SERVICES_TABLE_SERVICE_NAME',@lastid,'TABLE1','{"field":"serviceName"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_SERVICE_NAME'),'Service name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_SERVICE_NAME'),'Nombre del Servicio','es',true);

INSERT INTO texts (default_text) VALUES ('Column Api Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Api Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de columna Api');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_PAGE'),'SYSTEM_SERVICES_TABLE_API_VERSION',@lastid,'TABLE1','{"field":"apiVersion"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_API_VERSION'),'API Version','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_API_VERSION'),'Versión de la API','es',true);

INSERT INTO texts (default_text) VALUES ('Column App Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column App Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de la aplicación de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_PAGE'),'SYSTEM_SERVICES_TABLE_APP_VERSION',@lastid,'TABLE1','{"field":"appVersion"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_APP_VERSION'),'APP Version','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_APP_VERSION'),'Version de aplicacion','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_PAGE'),'SYSTEM_SERVICES_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_SERVICES_PAGE'),'SYSTEM_SERVICES_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa-regular fa-pen-to-square thub-1","permission":{"ARER":"R"},"label":{"en":"Modify"}}]}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_SERVICES_TABLE_OPTIONS'),'Options','es',true);
