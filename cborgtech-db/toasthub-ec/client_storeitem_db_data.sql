-- Member







-- Admin
-- FORM
INSERT INTO texts (default_text) VALUES ('Store Item Admin Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Store Item Admin Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de administración de artículos de la tienda');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'EC_ADMIN_STOREITEM_FORM',@lastid,'ADMIN');


INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'EC_ADMIN_STOREITEM_FORM'),'EC_ADMIN_STOREITEM_FORM_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.ecommerce.model.ECStoreItem","field":"name","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'EC_ADMIN_STOREITEM_FORM_NAME'),'','Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'EC_ADMIN_STOREITEM_FORM_NAME'),'','Nombre:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Description');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Description');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Descripción');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'EC_ADMIN_STOREITEM_FORM'),'EC_ADMIN_STOREITEM_FORM_DESCRIPTION',@lastid,'TXTAREA','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.ecommerce.model.ECStoreItem","field":"description","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'EC_ADMIN_STOREITEM_FORM_DESCRIPTION'),'','Description:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'EC_ADMIN_STOREITEM_FORM_DESCRIPTION'),'','Descripción:','es',true,true,'');


-- Page
INSERT INTO texts (default_text) VALUES ('Store Item Admin Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Store Item Admin Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de administración de artículos de la tienda');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'EC_ADMIN_STOREITEM_PAGE',@lastid,'ADMIN');

-- PAGE text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'EC_ADMIN_STOREITEM_PAGE'),'EC_ADMIN_STOREITEM_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'EC_ADMIN_STOREITEM_PAGE_HEADER'),'Store Items','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'EC_ADMIN_STOREITEM_PAGE_HEADER'),'Artículos de la tienda','es',true);

-- TABLE
INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'EC_ADMIN_STOREITEM_PAGE'),'EC_ADMIN_STOREITEM_TABLE_NAME',@lastid,'TABLE1','{"field":"name"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'EC_ADMIN_STOREITEM_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'EC_ADMIN_STOREITEM_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'EC_ADMIN_STOREITEM_PAGE'),'EC_ADMIN_STOREITEM_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa-regular fa-pen-to-square thub-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa-regular fa-trash-can thub-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}},{"code":"ITEMINVENTORY","classField":"fa fa-building fa-1","permission":{"ARDR":"W"},"label":{"en":"Inventory"}}]}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'EC_ADMIN_STOREITEM_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'EC_ADMIN_STOREITEM_TABLE_OPTIONS'),'Options','es',true);
