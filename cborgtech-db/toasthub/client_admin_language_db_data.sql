
-- Languages
INSERT INTO texts (default_text) VALUES ('Admin Language Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Language Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de idioma de administración');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_LANGUAGE_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_FORM'),'ADMIN_LANGUAGE_FORM_TITLE',@lastid,'MTXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Language","field":"title","type":"Object","defaultClazz":{"clazz":"org.toasthub.security.model.Text","field":"defaultText","type":"String","method":"setTitleDefaultText"},"textClazz":{"clazz":"org.toasthub.security.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}],"method":"setTitleMtext"}}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_TITLE'),'','{"label":"Title:","defaultLabel":"Default Text:","textLabel":"Text:"}','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_TITLE'),'','{"label":"Título:","defaultLabel":"Texto predeterminado:","textLabel":"Título:"}','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_FORM'),'ADMIN_LANGUAGE_FORM_CODE',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Language","field":"code","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_CODE'),'','Code:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_CODE'),'','Código:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_FORM'),'ADMIN_LANGUAGE_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Language","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","defaultInd":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","defaultInd":true},{"value":false,"label":"Inhabilitar"}]}','Estado:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Default');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_FORM'),'ADMIN_LANGUAGE_FORM_DEFAULT',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Language","field":"defaultLang","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_DEFAULT'),'{"options":[{"value":true,"label":"Yes"},{"value":false,"label":"No","defaultInd":true}]}','Default:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_DEFAULT'),'{"options":[{"value":true,"label":"Sí"},{"value":false,"label":"No","defaultInd":true}]}','Defecto:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Direction');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Direction');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_FORM'),'ADMIN_LANGUAGE_FORM_DIRECTION',@lastid,'SLT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Language","field":"dir","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_DIRECTION'),'{"options":[{"value":"ltr","text":"Left-to-right","defaultInd":true},{"value":"rtl","text":"Right-to-left"}]}','Direction:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'ADMIN_LANGUAGE_FORM_DIRECTION'),'{"options":[{"value":"ltr","text":"De izquierda a derecha","defaultInd":true},{"value":"rtl","text":"De derecha a izquierda"}]}','Dirección:','es',true,true,4,'');


-- Admin Language Page
INSERT INTO texts (default_text) VALUES ('Admin Language Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Language Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de idioma Admin');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_LANGUAGE_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO page_text_name (page_name_id,name,text_id) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_PAGE'),'ADMIN_LANGUAGE_PAGE_HEADER',@lastid);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_LANGUAGE_PAGE_HEADER'),'Languages','en',true);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM page_text_name WHERE name = 'ADMIN_LANGUAGE_PAGE_HEADER'),'Idiomas','es',true);

INSERT INTO texts (default_text) VALUES ('Admin Language Table');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Language Table');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tabla de idioma del administrador');
INSERT INTO page_name (name,text_id,category) VALUES ('ADMIN_LANGUAGE_TABLE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Column Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_TABLE'),'ADMIN_LANGUAGE_TABLE_TITLE',@lastid,'{"fieldML":"title"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_TITLE'),'Title','en',true,0);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_TITLE'),'Título','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_TABLE'),'ADMIN_LANGUAGE_TABLE_CODE',@lastid,'{"field":"code"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_CODE'),'Code','en',true,1);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_CODE'),'Código','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Status');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_TABLE'),'ADMIN_LANGUAGE_TABLE_STATUS',@lastid,'{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}');

INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_STATUS'),'Status','en',true,2);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_STATUS'),'Estado','es',true,2);

INSERT INTO texts (default_text) VALUES ('Column Default');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Default');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valor predeterminado de la columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_TABLE'),'ADMIN_LANGUAGE_TABLE_DEFAULT',@lastid,'{"fieldBool":"defaultLang","labelTrue":{"defaultText":"Yes","en":"Yes","es":"Si"},"labelFalse":{"defaultText":"No","en":"No","es":"No"}}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_DEFAULT'),'Default','en',true,3);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_DEFAULT'),'Defecto','es',true,3);

INSERT INTO texts (default_text) VALUES ('Column Direction');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Direction');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dirección de Columna');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_TABLE'),'ADMIN_LANGUAGE_TABLE_DIRECTION',@lastid,'{"field":"dir"}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_DIRECTION'),'Direction','en',true,4);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_DIRECTION'),'Dirección','es',true,4);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO page_label_name (page_name_id,name,text_id,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'ADMIN_LANGUAGE_TABLE'),'ADMIN_LANGUAGE_TABLE_OPTIONS',@lastid,'{"fieldIcon":[{"icon":"option1","classField":"fa fa-pencil-square-o","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"icon":"option2","classField":"fa fa-trash","permission":{"ARDR":"W"},"label":{"en":"Delete"}}]}');
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_OPTIONS'),'Options','en',true,9);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM page_label_name WHERE name = 'ADMIN_LANGUAGE_TABLE_OPTIONS'),'Options','es',true,9);
