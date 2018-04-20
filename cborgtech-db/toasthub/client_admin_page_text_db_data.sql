
-- Admin Text Form
INSERT INTO texts (default_text) VALUES ('Admin Text Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Text Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de texto de administrador');
INSERT INTO page_name (name,text_id,category) VALUES ('APP_TEXT_FORM',@lastid,'ADMIN');

-- Text 
INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_NAME_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":"name","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_NAME'),'','Name:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_NAME'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_NAME_TITLE',@lastid,'GRP','text',0,0,null,'MAIN','MTITLE','{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","type":"Object"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_TITLE'),'','Title:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_TITLE'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Default Text Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_NAME_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_NAME_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":{"langTexts":{"clazz":"org.toasthub.core.general.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_NAME_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Nombre deila:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Field Type');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Field Type');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_NAME_OPTIONALPARAMS',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":"optionalParams","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_OPTIONALPARAMS'),'','Optional params:','en',true,false,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_OPTIONALPARAMS'),'','Parámetros opcionales:','es',true,false,3,'');


INSERT INTO texts (default_text) VALUES ('Values');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Values');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valores');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_NAME_VALUES',@lastid,'GRP','text',0,0,null,'MAIN','MVALUES','{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":{"values":{"clazz":"org.toasthub.core.preference.model.AppPageTextValue","type":"Set"}},"method":"setMValues","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_VALUES'),'','Values:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_NAME_VALUES'),'','Valores:','es',true,true,4,'');

INSERT INTO texts (default_text) VALUES ('Value');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Value');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valor');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_VALUE_VALUE',@lastid,'MTXT','text',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":"value","type":"String","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_VALUE_VALUE'),'','Value:','en',true,false,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_VALUE_VALUE'),'','Valor:','es',true,false,0,'');

INSERT INTO texts (default_text) VALUES ('Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_VALUE_LANG',@lastid,'MTXT','text',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":"lang","type":"String","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_VALUE_LANG'),'','Language:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_VALUE_LANG'),'','Idioma:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Rendered');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rendered');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rendido');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_TEXT_FORM'),'APP_TEXT_VALUE_RENDERED',@lastid,'MBLN','radioH',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageTextName","field":"rendered","type":"Boolean","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_VALUE_RENDERED'),'{"options":[{"value":true,"label":"True","default":true},{"value":false,"label":"False"}]}','Rendered:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_TEXT_VALUE_RENDERED'),'{"options":[{"value":true,"label":"Cierto","default":true},{"value":false,"label":"Falso"}]}','Rendido:','es',true,true,2,'');

