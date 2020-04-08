
-- Admin Application Page
INSERT INTO texts (default_text) VALUES ('Admin Application Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Application Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de aplicación de administrador');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'SYSTEM_APPLICATION_PAGE',@lastid,'SYSTEM');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_FORM_TITLE',@lastid,'GRP','text',0,0,null,'FORM1','MTITLE','{"clazz":"org.toasthub.security.model.Application","field":"title","type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_TITLE'),'','Name:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_TITLE'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Default Text Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_FORM_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'FORM1','MTITLE','{"clazz":"org.toasthub.security.model.Application","field":{"title":{"clazz":"org.toasthub.security.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Name Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_FORM_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'FORM1','MTITLE','{"clazz":"org.toasthub.security.model.Application","field":{"title":{"clazz":"org.toasthub.security.model.Text","field":{"langTexts":{"clazz":"org.toasthub.security.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_FORM_CODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.Application","field":"code","type":"String"}','');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_CODE'),'','Code:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_CODE'),'','Código:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.security.model.Application","field":"active","type":"Boolean"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,2,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SYSTEM_APPLICATION_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,2,'');


-- Text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SYSTEM_APPLICATION_PAGE_HEADER'),'Applications','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SYSTEM_APPLICATION_PAGE_HEADER'),'Aplicaciones','es',true);


-- Table
INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_TABLE_NAME',@lastid,'TABLE1','{"fieldML":"title"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_APPLICATION_TABLE_NAME'),'Name','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_APPLICATION_TABLE_NAME'),'Nombre','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_TABLE_CODE',@lastid,'TABLE1','{"field":"code"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_APPLICATION_TABLE_CODE'),'Code','en',true,1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_APPLICATION_TABLE_CODE'),'Código','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'SYSTEM_APPLICATION_PAGE'),'SYSTEM_APPLICATION_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_APPLICATION_TABLE_STATUS'),'Status','en',true,2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SYSTEM_APPLICATION_TABLE_STATUS'),'Estado','es',true,2);
