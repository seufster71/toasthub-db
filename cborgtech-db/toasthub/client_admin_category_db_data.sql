-- Category
INSERT INTO texts (default_text) VALUES ('Admin Category Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Category Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Forma de categoría de administrado');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_CATEGORY_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_TITLE',@lastid,'GRP','text',0,0,null,'MAIN','MTITLE','{"clazz":"org.toasthub.core.general.model.Category","field":"title","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE'),'','Name:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Default Text Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.general.model.Category","field":{"title":{"clazz":"org.toasthub.core.system.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Name Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.general.model.Category","field":{"title":{"clazz":"org.toasthub.core.system.model.Text","field":{"langTexts":{"clazz":"org.toasthub.core.system.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_CODE',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Category","field":"code","type":"String"}','');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_CODE'),'','Code:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_CODE'),'','Código:','es',true,true,1,'');


INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_FORM'),'ADMIN_CATEGORY_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Category","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_CATEGORY_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,4,'');

-- Admin Category Page
INSERT INTO texts (default_text) VALUES ('Admin Category Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Category Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de categoría de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_CATEGORY_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_PAGE'),'ADMIN_CATEGORY_PAGE_HEADER',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_CATEGORY_PAGE_HEADER'),'Category','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_CATEGORY_PAGE_HEADER'),'Categoría','es',true);

-- Admin Category Table
INSERT INTO texts (default_text) VALUES ('Admin Category Table');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Category Table');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tabla de categorías administrativas');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_CATEGORY_TABLE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_TABLE'),'ADMIN_CATEGORY_TABLE_NAME',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_NAME'),'Name','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_NAME'),'Nombre','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_CODE'),'ADMIN_CATEGORY_TABLE_CODE',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_CODE'),'Code','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_CODE'),'Código','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO page_label_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_CATEGORY_STATUS'),'ADMIN_CATEGORY_TABLE_STATUS',@lastid);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_STATUS'),'Status','en',true,2);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_CATEGORY_TABLE_STATUS'),'Estado','es',true,2);
