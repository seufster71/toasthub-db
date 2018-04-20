
-- Admin Page Form
INSERT INTO texts (default_text) VALUES ('Admin Page Preference Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Page Preference Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de preferencia de página de administrador');
INSERT INTO page_name (name,text_id,category) VALUES ('APP_PAGE_FORM',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'APP_PAGE_FORM'),'APP_PAGE_FORM_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageName","field":"name","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_NAME'),'','Name:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_NAME'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_PAGE_FORM'),'APP_PAGE_FORM_TITLE',@lastid,'GRP','text',0,0,null,'MAIN','MTITLE','{"clazz":"org.toasthub.core.preference.model.AppPageName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","type":"Object"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_TITLE'),'','Title:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_TITLE'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Default Text Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_PAGE_FORM'),'APP_PAGE_FORM_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.preference.model.AppPageName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_PAGE_FORM'),'APP_PAGE_FORM_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.preference.model.AppPageName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":{"langTexts":{"clazz":"org.toasthub.core.general.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_PAGE_FORM'),'APP_PAGE_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageName","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Nombre deila:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_PAGE_FORM'),'APP_PAGE_FORM_CATEGORY',@lastid,'SLT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageName","field":"category","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC"},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN","default":true}]}','Category:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_PAGE_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC"},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN","default":true}]}','Categoría:','es',true,true,3,'');


-- Admin FormField Form
INSERT INTO texts (default_text) VALUES ('Admin FormField Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin FormField Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario Admin FormField');
INSERT INTO page_name (name,text_id,category) VALUES ('APP_FORMFIELD_FORM',@lastid,'ADMIN');

-- Form Field 
INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_NAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"name","type":"String"}','{"modify":"disabled"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_NAME'),'','Name:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_NAME'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_TITLE',@lastid,'GRP','text',0,0,null,'MAIN','MTITLE','{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","type":"Object"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_TITLE'),'','Title:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_TITLE'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Default Text Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'MTITLE',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":{"langTexts":{"clazz":"org.toasthub.core.general.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"active","type":"Boolean"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Nombre deila:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Field Type');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Field Type');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_FIELDTYPE',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"fieldType","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_FIELDTYPE'),'','Field Type:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_FIELDTYPE'),'','Tipo de campo:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Rows');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rows');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Filas');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_ROWS',@lastid,'INT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"rows","type":"Integer"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_ROWS'),'','Rows:','en',true,false,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_ROWS'),'','Filas:','es',true,false,4,'');

INSERT INTO texts (default_text) VALUES ('Cols');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Cols');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columnas');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_COLS',@lastid,'INT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"cols","type":"Integer"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_COLS'),'','Cols:','en',true,false,5,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_COLS'),'','Columnas:','es',true,false,5,'');

INSERT INTO texts (default_text) VALUES ('Class Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Class Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de la clase');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_CLASSNAME',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"className","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_CLASSNAME'),'','Class Name:','en',true,false,6,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_CLASSNAME'),'','Nombre de la clase:','es',true,false,6,'');

INSERT INTO texts (default_text) VALUES ('Group');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Group');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Grupo');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_GROUP',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"group","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_GROUP'),'','Group:','en',true,true,7,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_GROUP'),'','Grupo:','es',true,true,7,'');

INSERT INTO texts (default_text) VALUES ('Subgroup');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Subgroup');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Subgrupo');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_SUBGROUP',@lastid,'TXT','text',0,0,null,'MAIN',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"subGroup","type":"String"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_SUBGROUP'),'','Subgroup:','en',true,false,8,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_SUBGROUP'),'','Subgrupo:','es',true,false,8,'');



INSERT INTO texts (default_text) VALUES ('Values');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Values');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valores');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_NAME_VALUES',@lastid,'GRP','text',0,0,null,'MAIN','MVALUES','{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":{"values":{"clazz":"org.toasthub.core.general.model.AppPageFormFieldValue","type":"Set"}},"method":"setMValues","type":"Object"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_VALUES'),'','Values:','en',true,true,9,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_NAME_VALUES'),'','Valores:','es',true,true,9,'');

INSERT INTO texts (default_text) VALUES ('Value');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Value');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valor');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_VALUE_VALUE',@lastid,'MTXT','text',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"value","type":"String","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_VALUE'),'','Value:','en',true,false,0,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_VALUE'),'','Valor:','es',true,false,0,'');

INSERT INTO texts (default_text) VALUES ('Label');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Label');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Etiqueta');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_VALUE_LABEL',@lastid,'MTXT','text',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"label","type":"String","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_LABEL'),'','Label:','en',true,true,1,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_LABEL'),'','Etiqueta:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Language');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Language');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Idioma');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_VALUE_LANG',@lastid,'MTXT','text',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"lang","type":"String","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_LANG'),'','Language:','en',true,true,2,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_LANG'),'','Idioma:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Rendered');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rendered');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rendido');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_VALUE_RENDERED',@lastid,'MBLN','radioH',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"rendered","type":"Boolean","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_RENDERED'),'{"options":[{"value":true,"label":"True","default":true},{"value":false,"label":"False"}]}','Rendered:','en',true,true,3,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_RENDERED'),'{"options":[{"value":true,"label":"Cierto","default":true},{"value":false,"label":"Falso"}]}','Rendido:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Required');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Required');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Necesario');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM page_name WHERE name = 'APP_FORMFIELD_FORM'),'APP_FORMFIELD_VALUE_REQUIRED',@lastid,'MBLN','radioH',0,0,null,'MVALUES',null,'{"clazz":"org.toasthub.core.preference.model.AppPageFormFieldName","field":"required","type":"Boolean","method":"setMValues"}');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_REQUIRED'),'{"options":[{"value":true,"label":"True","default":true},{"value":false,"label":"False"}]}','Required:','en',true,true,4,'');
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'APP_FORMFIELD_VALUE_REQUIRED'),'{"options":[{"value":true,"label":"Cierto","default":true},{"value":false,"label":"Falso"}]}','Necesario:','es',true,true,4,'');
