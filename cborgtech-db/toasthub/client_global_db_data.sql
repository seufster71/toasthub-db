
-- Global Page

INSERT INTO texts (default_text) VALUES ('Global Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Global Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página Global');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'GLOBAL_PAGE',@lastid,'PUBLIC');

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
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Lista vacía');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_LIST_EMPTY',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_LIST_EMPTY'),'No items available','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_LIST_EMPTY'),'No hay artículos disponibles','es',true);


INSERT INTO texts (default_text) VALUES ('True False Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','True False Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Verdadero Falso Opciones');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_TRUE_FALSE_OPTIONS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_TRUE_FALSE_OPTIONS'),'{"options":[{"label":"True","value":"true","defaultInd":true},{"label":"False","value":"false"}]}','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_TRUE_FALSE_OPTIONS'),'{"options":[{"label":"Cierto","value":"true","defaultInd":true},{"label":"Falso","value":"false"}]}','es',true);

INSERT INTO texts (default_text) VALUES ('False True Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','False True Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opciones verdaderas falsas');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_FALSE_TRUE_OPTIONS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_FALSE_TRUE_OPTIONS'),'{"options":[{"label":"False","value":"false","defaultInd":true},{"label":"True","value":"true"}]}','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_FALSE_TRUE_OPTIONS'),'{"options":[{"label":"Falso","value":"false","defaultInd":true},{"label":"Cierto","value":"true"}]}','es',true);

INSERT INTO texts (default_text) VALUES ('Severity Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Severity Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opciones de gravedad');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_SEVERITY_OPTIONS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_SEVERITY_OPTIONS'),'{"options":[{"label":"Critical","value":"CRITICAL"},{"label":"Major","value":"MAJOR"},{"label":"Minor","value":"MINOR"},{"label":"Info","value":"INFO","defaultInd":true}]}','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_SEVERITY_OPTIONS'),'{"options":[{"label":"Crítico","value":"CRITICAL"},{"label":"Mayor","value":"MAJOR"},{"label":"Menor","value":"MINOR"},{"label":"Informacion","value":"INFO","defaultInd":true}]}','es',true);

INSERT INTO texts (default_text) VALUES ('Active Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Active Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opciones activas');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_PAGE'),'GLOBAL_PAGE_ACTIVE_OPTIONS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_ACTIVE_OPTIONS'),'{"options":[{"label":"Active","value":true,"defaultInd":true},{"label":"Disable","value":false}]}','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_PAGE_ACTIVE_OPTIONS'),'{"options":[{"label":"Activo","value":true,"defaultInd":true},{"label":"Inhabilitar","value":false}]}','es',true);


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
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'GLOBAL_OPTIONS',@lastid,'ADMIN');

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
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'GLOBAL_SERVICE',@lastid,'PUBLIC');

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

INSERT INTO texts (default_text) VALUES ('Save Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Save Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Guardar exitosa');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_SAVE_SUCCESS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_SAVE_SUCCESS'),'Save Successful','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_SAVE_SUCCESS'),'Guardar exitosa','es',true);

INSERT INTO texts (default_text) VALUES ('Save Failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Save Failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Guardar fallida');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_SAVE_FAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_SAVE_FAIL'),'Save Failed','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_SAVE_FAIL'),'Guardar fallida','es',true);

INSERT INTO texts (default_text) VALUES ('Delete Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Delete Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Eliminar exitosa');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_DELETE_SUCCESS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_DELETE_SUCCESS'),'Delete Successful','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_DELETE_SUCCESS'),'Eliminar exitosa','es',true);

INSERT INTO texts (default_text) VALUES ('Delete Failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Delete Failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Eliminar fallida');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_DELETE_FAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_DELETE_FAIL'),'Delete Failed','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_DELETE_FAIL'),'Eliminar fallida','es',true);

INSERT INTO texts (default_text) VALUES ('Action not available');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Action not available');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Acción no disponible');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_ACTION_NOT_AVAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_ACTION_NOT_AVAIL'),'Action not available','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_ACTION_NOT_AVAIL'),'Acción no disponible','es',true);

INSERT INTO texts (default_text) VALUES ('Validation Error');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Validation Error');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Error de validacion');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_VALIDATION_ERR',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_VALIDATION_ERR'),'Validation Error','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_VALIDATION_ERR'),'Error de validacion','es',true);

INSERT INTO texts (default_text) VALUES ('Unable to complete request');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Unable to complete request');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','No se puede completar la solicitud');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_UNABLE_COMPLETE',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_UNABLE_COMPLETE'),'Unable to complete request','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_UNABLE_COMPLETE'),'No se puede completar la solicitud','es',true);

INSERT INTO texts (default_text) VALUES ('Execution Failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Execution Failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ejecución fallida');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_EXECUTION_FAIL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_EXECUTION_FAIL'),'Execution Failed','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_EXECUTION_FAIL'),'Ejecución fallida','es',true);

INSERT INTO texts (default_text) VALUES ('Missing ID');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Missing ID');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','ID faltante');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_MISSING_ID',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_MISSING_ID'),'Missing ID','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_MISSING_ID'),'ID faltante','es',true);

INSERT INTO texts (default_text) VALUES ('No Items');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','No Items');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','No hay artículos');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'GLOBAL_SERVICE'),'GLOBAL_SERVICE_NO_ITEMS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_NO_ITEMS'),'No Items','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'GLOBAL_SERVICE_NO_ITEMS'),'No hay artículos','es',true);

