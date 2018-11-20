-- Admin Prefereneces Page
INSERT INTO texts (default_text) VALUES ('Admin Preference Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preferenece Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página Admin Preferenece');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_PREFERENCE_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_PAGE'),'ADMIN_PREFERENCE_PAGE_HEADER',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PREFERENCE_PAGE_HEADER'),'Preferences','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PREFERENCE_PAGE_HEADER'),'Preferencias','es',true);

INSERT INTO texts (default_text) VALUES ('Option Add');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Option Add');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opción Añadir');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_PAGE'),'ADMIN_PREFERENCE_PAGE_OPTION_ADD',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PREFERENCE_PAGE_OPTION_ADD'),'Add','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_PREFERENCE_PAGE_OPTION_ADD'),'Añadir','es',true);

-- Table
INSERT INTO texts (default_text) VALUES ('Admin Preference Table');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Preference Table');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tabla de preference de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_PREFERENCE_TABLE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna Code');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_TABLE'),'ADMIN_PREFERENCE_TABLE_CODE',@lastid,'{"field":"name"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_CODE'),'Code','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_CODE'),'Code','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Description');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Description');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Description');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_TABLE'),'ADMIN_PREFERENCE_TABLE_DESC',@lastid,'{"fieldML":"title"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_DESC'),'Description','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_DESC'),'Description','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Category');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_TABLE'),'ADMIN_PREFERENCE_TABLE_CATEGORY',@lastid,'{"field":"category"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_CATEGORY'),'Category','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_CATEGORY'),'Category','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_TABLE'),'ADMIN_PREFERENCE_TABLE_STATUS',@lastid,'{"fieldBool":"active"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_STATUS'),'Status','en',true,4);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_TABLE_STATUS'),'Estado','es',true,4);

-- Tabs
INSERT INTO texts (default_text) VALUES ('Tab - Form Fields');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Tab - Form Fields');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tab - Campos del formulario');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_PAGE'),'ADMIN_PREFERENCE_PAGE_TAB_FORMFIELD',@lastid,'{"tabCode":"formfield","selected":true}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_FORMFIELD'),'Form Fields','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_FORMFIELD'),'Campos del formulario','es',true,0);

INSERT INTO texts (default_text) VALUES ('Tab - Labels');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Tab - Labelds');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tab - Etiquetas');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_PAGE'),'ADMIN_PREFERENCE_PAGE_TAB_LABELS',@lastid,'{"tabCode":"label"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_LABELS'),'Labels','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_LABELS'),'Etiquetas','es',true,1);

INSERT INTO texts (default_text) VALUES ('Tab - Texts');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Tab - Texts');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tab - Textos');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_PAGE'),'ADMIN_PREFERENCE_PAGE_TAB_TEXTS',@lastid,'{"tabCode":"text"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_TEXTS'),'Texts','en',true,2);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_TEXTS'),'Textos','es',true,2);

INSERT INTO texts (default_text) VALUES ('Tab - Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Tab - Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tab - Opciones');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_PREFERENCE_PAGE'),'ADMIN_PREFERENCE_PAGE_TAB_OPTIONS',@lastid,'{"tabCode":"option"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_OPTIONS'),'Options','en',true,3);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_PREFERENCE_PAGE_TAB_OPTIONS'),'Opciones','es',true,3);
