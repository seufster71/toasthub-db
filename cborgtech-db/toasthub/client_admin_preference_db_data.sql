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

-- Labels
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
