-- Category FORM
INSERT INTO texts (default_text) VALUES ('Admin Category Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Category Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de categoría de administrador');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_CATEGORY_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_TITLE',@lastid,'MTXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Category","field":"title","type":"Object","defaultClazz":{"clazz":"org.toasthub.security.model.Text","field":"defaultText","type":"String","method":"setTitleDefaultText"},"textClazz":{"clazz":"org.toasthub.security.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}],"method":"setTitleMtext"}}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE'),'','{"label":"Name:","defaultLabel":"Default Text:","textLabel":"Text:"}','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE'),'','{"label":"Nombre:","defaultLabel":"Texto predeterminado:","textLabel":"Título:"}','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_CODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Category","field":"code","type":"String"}','',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_CODE'),'','Code:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_CODE'),'','Código:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Category","field":"active","type":"Boolean"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,'');

-- Page
INSERT INTO texts (default_text) VALUES ('Admin Category Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Category Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de categoría de administración');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_CATEGORY_PAGE',@lastid,'ADMIN');

-- Texts
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_CATEGORY_PAGE'),'ADMIN_CATEGORY_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_CATEGORY_PAGE_HEADER'),'Category','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_CATEGORY_PAGE_HEADER'),'Categoría','es',true);

-- Table
INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_CATEGORY_PAGE'),'ADMIN_CATEGORY_TABLE_NAME',@lastid,"TABLE1",'{"fieldML":"title"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_CATEGORY_PAGE'),'ADMIN_CATEGORY_TABLE_CODE',@lastid,"TABLE1",'{"field":"code"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_CODE'),'Code','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_CODE'),'Código','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_CATEGORY_PAGE'),'ADMIN_CATEGORY_TABLE_STATUS',@lastid,"TABLE1",'{"fieldBool":"active"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_STATUS'),'Estado','es',true);
