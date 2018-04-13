
-- Global Page

INSERT INTO texts (default_text) VALUES ('Global Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Global Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página Global');
INSERT INTO page_name (name,text_id,category) VALUES ('GLOBAL_PAGE',@lastid,'PUBLIC');

-- Paging
INSERT INTO texts (default_text) VALUES ('Paging Prev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Prev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paging Anterior');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_PREV',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_PREV'),'Prev','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_PREV'),'Anterior','es',true,null);

INSERT INTO texts (default_text) VALUES ('Paging Next');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Next');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paginación Siguiente');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_NEXT',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_NEXT'),'Next','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_NEXT'),'Próximo','es',true,null);

INSERT INTO texts (default_text) VALUES ('Paging First');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging First');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paging Primera');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_FIRST',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_FIRST'),'First','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_FIRST'),'Primero','es',true,null);

INSERT INTO texts (default_text) VALUES ('Paging Last');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Last');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Paging Última');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_PAGING_LAST',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_LAST'),'Last','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_PAGING_LAST'),'Pasado','es',true,null);

INSERT INTO texts (default_text) VALUES ('Button Accept');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Button Accept');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón Aceptar');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_BUTTON_ACCEPT',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_ACCEPT'),'Save','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_ACCEPT'),'Salvar','es',true,null);

INSERT INTO texts (default_text) VALUES ('Button Decline');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Button Decline');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de descenso');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_BUTTON_DECLINE',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_DECLINE'),'Cancel','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_BUTTON_DECLINE'),'Cancelar','es',true,null);

INSERT INTO texts (default_text) VALUES ('Search Input');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Search Input');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Buscar entrada');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_SEARCH_INPUT',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_INPUT'),'Search for...','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_INPUT'),'Buscar...','es',true,null);

INSERT INTO texts (default_text) VALUES ('Search Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Search Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de búsqueda');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_SEARCH_BUTTON',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_BUTTON'),'Go!','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_SEARCH_BUTTON'),'¡Ir!','es',true,null);

INSERT INTO texts (default_text) VALUES ('Form Header Create');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Form Header Create');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de formulario Crear');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_FORM_HEADER_CREATE',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_CREATE'),'Create','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_CREATE'),'Crear','es',true,null);

INSERT INTO texts (default_text) VALUES ('Form Header Modify');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Form Header Modify');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Modificar el encabezado del formulario');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_FORM_HEADER_MODIFY',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_MODIFY'),'Modify','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_FORM_HEADER_MODIFY'),'Modificar','es',true,null);

INSERT INTO texts (default_text) VALUES ('Empty List');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Empty List');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','El Empty List');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_LIST_EMPTY',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_LIST_EMPTY'),'No items available','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_LIST_EMPTY'),'el No items available','es',true,null);

INSERT INTO texts (default_text) VALUES ('Menu Option Add');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Menu Option Add');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menu Option Add');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_MENU_OPTION_ADD',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_ADD'),'Add','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_ADD'),'Añadir','es',true,null);

INSERT INTO texts (default_text) VALUES ('Menu Option Delete');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Menu Option Delete');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menu Option Delete');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_MENU_OPTION_DELETE',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_DELETE'),'Delete','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_PAGE_MENU_OPTION_DELETE'),'Borrar','es',true,null);

-- Global Option
INSERT INTO texts (default_text) VALUES ('Global Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Global Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opciones globales');
INSERT INTO page_name (name,text_id,category) VALUES ('GLOBAL_OPTIONS',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('SMTP Gateway User');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SMTP Gateway User');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','SMTP Gateway User');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_OPTIONS'),'GLOBAL_OPTIONS_SMTP_GATEWAY_USER',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_USER'),'seufster@gmail.com','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_USER'),'seufster@gmail.com','es',true,null);

INSERT INTO texts (default_text) VALUES ('SMTP Gateway Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SMTP Gateway Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','SMTP Gateway Password');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_OPTIONS'),'GLOBAL_OPTIONS_SMTP_GATEWAY_PASSWORD',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_PASSWORD'),'seufster@gmail.com','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_OPTIONS_SMTP_GATEWAY_PASSWORD'),'seufster@gmail.com','es',true,null);

-- Global Service
INSERT INTO texts (default_text) VALUES ('Global Service');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Global Service');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio Global');
INSERT INTO page_name (name,text_id,category) VALUES ('GLOBAL_SERVICE',@lastid,'PUBLIC');

INSERT INTO texts (default_text) VALUES ('Validation Error');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Validation Error');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de validacion');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_VALIDATION_ERROR',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_SERVICE_VALIDATION_ERROR'),'Validation Error!','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_SERVICE_VALIDATION_ERROR'),'Error de validacion!','es',true,null);

INSERT INTO texts (default_text) VALUES ('Service Disabled');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Service Disabled');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Servicio deshabilitado');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_DISABLED',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_SERVICE_DISABLED'),'This service is currently disabled.','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_SERVICE_DISABLED'),'Este servicio está actualmente deshabilitado.','es',true,null);

INSERT INTO texts (default_text) VALUES ('Access Denied');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Access Denied');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acceso denegado');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_ACCESS_DENIED',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_SERVICE_ACCESS_DENIED'),'Access Denied.','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'GLOBAL_SERVICE_ACCESS_DENIED'),'Acceso denegado','es',true,null);

