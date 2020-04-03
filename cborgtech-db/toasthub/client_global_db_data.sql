
-- Global Page

INSERT INTO texts (default_text) VALUES ('Global Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Global Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página Global');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'GLOBAL_PAGE',@lastid,'PUBLIC');

-- Paging texts
INSERT INTO texts (default_text) VALUES ('Paging Prev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Prev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paging Anterior');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_PREV',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_PREV'),'Prev','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_PREV'),'Anterior','es',true);

INSERT INTO texts (default_text) VALUES ('Paging Next');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Next');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paginación Siguiente');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_NEXT',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_NEXT'),'Next','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_NEXT'),'Próximo','es',true);

INSERT INTO texts (default_text) VALUES ('Paging First');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging First');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paging Primera');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_FIRST',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_FIRST'),'First','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_FIRST'),'Primero','es',true);

INSERT INTO texts (default_text) VALUES ('Paging Last');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Last');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paging Última');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_LAST',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_LAST'),'Last','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_LAST'),'Pasado','es',true);

-- Buttons text
INSERT INTO texts (default_text) VALUES ('Button Accept');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Button Accept');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón Aceptar');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_BUTTON_ACCEPT',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_ACCEPT'),'Save','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_ACCEPT'),'Salvar','es',true);

INSERT INTO texts (default_text) VALUES ('Button Decline');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Button Decline');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de descenso');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_BUTTON_DECLINE',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_DECLINE'),'Cancel','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_DECLINE'),'Cancelar','es',true);

-- Search texts
INSERT INTO texts (default_text) VALUES ('Search Input');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Search Input');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Buscar entrada');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_SEARCH_INPUT',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_INPUT'),'Search for...','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_INPUT'),'Buscar...','es',true);

INSERT INTO texts (default_text) VALUES ('Search Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Search Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de búsqueda');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_SEARCH_BUTTON',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_BUTTON'),'Go!','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_BUTTON'),'¡Ir!','es',true);

-- Header texts
INSERT INTO texts (default_text) VALUES ('Form Header Create');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Form Header Create');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de formulario Crear');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_FORM_HEADER_CREATE',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_CREATE'),'Create','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_CREATE'),'Crear','es',true);

INSERT INTO texts (default_text) VALUES ('Form Header Modify');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Form Header Modify');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Modificar el encabezado del formulario');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_FORM_HEADER_MODIFY',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_MODIFY'),'Modify','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_MODIFY'),'Modificar','es',true);

-- Empty list
INSERT INTO texts (default_text) VALUES ('Empty List');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Empty List');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','El Empty List');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_LIST_EMPTY',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_LIST_EMPTY'),'No items available','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_LIST_EMPTY'),'el No items available','es',true);

-- Menu texts
INSERT INTO texts (default_text) VALUES ('Menu Option Add');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Menu Option Add');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menu Option Add');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_MENU_OPTION_ADD',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_ADD'),'Add','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_ADD'),'Añadir','es',true);

INSERT INTO texts (default_text) VALUES ('Menu Option Delete');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Menu Option Delete');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menu Option Delete');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_MENU_OPTION_DELETE',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_DELETE'),'Delete','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_DELETE'),'Borrar','es',true);

INSERT INTO texts (default_text) VALUES ('Paging Show Entires');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Show Entires');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paging Show Entires');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_SHOW_ENTRIES',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_SHOW_ENTRIES'),'Showing {pageStart} to {pageLimit} of {itemCount} entries','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_PAGING_SHOW_ENTRIES'),'Showing {pageStart} to {pageLimit} of {itemCount} entries','es',true);

-- Paging Options
INSERT INTO texts (default_text) VALUES ('Paging Limit');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Limit');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Límite de paginación');
INSERT INTO pref_option_name (pref_name_id,name,text_id,value_type,default_value,use_default) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGELIMIT',@lastid,'Integer','20',false);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'GLOBAL_PAGE_PAGELIMIT'),'20','en',true);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'GLOBAL_PAGE_PAGELIMIT'),'20','es',true);

INSERT INTO texts (default_text) VALUES ('Paging Limit MAX');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Limit MAX');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Límite de paginación MAX');
INSERT INTO pref_option_name (pref_name_id,name,text_id,value_type,default_value,use_default) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGELIMIT_MAX',@lastid,'Integer','200',false);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'GLOBAL_PAGE_PAGELIMIT_MAX'),'200','en',true);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'GLOBAL_PAGE_PAGELIMIT_MAX'),'200','es',true);

INSERT INTO texts (default_text) VALUES ('Paging Limit Select');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Limit Select');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Límite de paginación Select');
INSERT INTO pref_option_name (pref_name_id,name,text_id,value_type,default_value,use_default) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGELIMIT_SELECT',@lastid,'JSON','[{"k":20,"v":20}]',false);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'GLOBAL_PAGE_PAGELIMIT_SELECT'),'[{"k":20,"v":20},{"k":50,"v":50},{"k":100,"v":100}]','en',true);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'GLOBAL_PAGE_PAGELIMIT_SELECT'),'[{"k":20,"v":20},{"k":50,"v":50},{"k":100,"v":100}]','es',true);


-- Global Option
INSERT INTO texts (default_text) VALUES ('Global Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Global Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opciones globales');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'GLOBAL_OPTIONS',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('SMTP Gateway User');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SMTP Gateway User');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','SMTP Gateway User');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_OPTIONS'),'GLOBAL_OPTIONS_SMTP_GATEWAY_USER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_USER'),'toasthub@gmail.com','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_USER'),'toathub@gmail.com','es',true);

INSERT INTO texts (default_text) VALUES ('SMTP Gateway Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SMTP Gateway Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','SMTP Gateway Password');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_OPTIONS'),'GLOBAL_OPTIONS_SMTP_GATEWAY_PASSWORD',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_PASSWORD'),'toasthub#1','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_PASSWORD'),'toasthub#1','es',true);

-- Global Service
INSERT INTO texts (default_text) VALUES ('Global Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Global Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio Global');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'GLOBAL_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Validation Error');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Validation Error');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de validacion');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_VALIDATION_ERROR',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_VALIDATION_ERROR'),'Validation Error!','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_VALIDATION_ERROR'),'Error de validacion!','es',true);

INSERT INTO texts (default_text) VALUES ('Service Disabled');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Service Disabled');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio deshabilitado');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_DISABLED',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_DISABLED'),'This service is currently disabled.','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_DISABLED'),'Este servicio está actualmente deshabilitado.','es',true);

INSERT INTO texts (default_text) VALUES ('Access Denied');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Denied');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceso denegado');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_ACCESS_DENIED',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_ACCESS_DENIED'),'Access Denied.','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_ACCESS_DENIED'),'Acceso denegado','es',true);

