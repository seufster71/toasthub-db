
-- Admin Page Form
INSERT INTO texts (default_text) VALUES ('Admin FormField Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin FormField Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de administrador Formulario de campo');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_FORMFIELD_FORM',@lastid,'ADMIN');


-- Form for Name
INSERT INTO texts (default_text) VALUES ('Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_TITLE',@lastid,'MTXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"title","type":"Object","defaultClazz":{"clazz":"org.toasthub.core.general.model.Text","field":"defaultText","type":"String","method":"setTitleDefaultText"},"textClazz":{"clazz":"org.toasthub.core.general.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}],"method":"setTitleMtext"}}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_TITLE'),'','{"label":"Title:","defaultLabel":"Default Text:","textLabel":"Text:"}','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_TITLE'),'','{"label":"Título:","defaultLabel":"Texto predeterminado:","textLabel":"Texto:"}','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_CODE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"name","type":"String"}','{"modify":"disabled"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_CODE'),'','Code:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_CODE'),'','Código:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Field Type');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Field Type');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_FIELDTYPE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"fieldType","type":"String"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_FIELDTYPE'),'','Field Type:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_FIELDTYPE'),'','Tipo de campo:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Rows');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rows');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Filas');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_ROWS',@lastid,'INT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"rows","type":"Integer"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_ROWS'),'','Rows:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_ROWS'),'','Filas:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Cols');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Cols');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columnas');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_COLS',@lastid,'INT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"cols","type":"Integer"}',4);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_COLS'),'','Cols:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_COLS'),'','Columnas:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Class Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Class Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de la clase');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_CLASSNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"className","type":"String"}',5);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_CLASSNAME'),'','Class Name:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_CLASSNAME'),'','Nombre de la clase:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Group');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Group');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Grupo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_GROUP',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"group","type":"String"}',6);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_GROUP'),'','Group:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_GROUP'),'','Grupo:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Subgroup');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Subgroup');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Subgrupo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_SUBGROUP',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"subGroup","type":"String"}',7);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_SUBGROUP'),'','Subgroup:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_SUBGROUP'),'','Subgrupo:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"active","type":"Boolean"}',8);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Nombre deila:','es',true,true,'');


INSERT INTO texts (default_text) VALUES ('Values');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Values');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valors');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_NAME_VALUES',@lastid,'MGRP','hidden',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.preference.model.PrefFormFieldName","field":"values","type":"Set","method":"addToValues","groupClazz":"org.toasthub.core.preference.model.PrefFormFieldValue","groupName":"MULTI-VALUES","groupType":"MULTI"}',9);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_VALUES'),'','Values:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_NAME_VALUES'),'','Valors:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Value');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Value');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valor');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_VALUE_VALUE',@lastid,'TXT','text',0,0,null,'FORM1','MULTI-VALUES','{"clazz":"org.toasthub.core.preference.model.PrefFormFieldValue","field":"value","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_VALUE'),'','Value:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_VALUE'),'','Valor:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Label');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Label');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Etiqueta');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_VALUE_LABEL',@lastid,'TXT','text',0,0,null,'FORM1','MULTI-VALUES','{"clazz":"org.toasthub.core.preference.model.PrefFormFieldValue","field":"label","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_LABEL'),'','Label:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_LABEL'),'','Etiqueta:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Rendered');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rendered');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rendido');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_VALUE_RENDERED',@lastid,'BLN','radioH',0,0,null,'FORM1','MULTI-VALUES','{"clazz":"org.toasthub.core.preference.model.PrefFormFieldValue","field":"rendered","type":"Boolean"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_RENDERED'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_TRUE_FALSE_OPTIONS"}}','Rendered:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_RENDERED'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_TRUE_FALSE_OPTIONS"}}','Rendido:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Required');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Required');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Necesario');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_FORM'),'ADMIN_FORMFIELD_FORM_VALUE_REQUIRED',@lastid,'BLN','radioH',0,0,null,'FORM1','MULTI-VALUES','{"clazz":"org.toasthub.core.preference.model.PrefFormFieldValue","field":"required","type":"Boolean"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_REQUIRED'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_FALSE_TRUE_OPTIONS"}}','Required:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_FORMFIELD_FORM_VALUE_REQUIRED'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_FALSE_TRUE_OPTIONS"}}','Necesario:','es',true,true,'');


INSERT INTO texts (default_text) VALUES ('Admin FormField Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin FormField Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página FormField Admin');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_FORMFIELD_PAGE',@lastid,'ADMIN');

-- Texts
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_FORMFIELD_PAGE_HEADER'),'FormFields','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_FORMFIELD_PAGE_HEADER'),'FormFields','es',true);

INSERT INTO texts (default_text) VALUES ('Option Add');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Option Add');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opción Añadir');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_PAGE_OPTION_ADD',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_FORMFIELD_PAGE_OPTION_ADD'),'Add','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_FORMFIELD_PAGE_OPTION_ADD'),'Añadir','es',true);


-- Table
INSERT INTO texts (default_text) VALUES ('Column Move Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Move Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opción de movimiento de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_TABLE_MOVE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MOVEABOVE","classField":"fa fa-arrow-up fa-1","permission":{"ARER":"R"},"label":{"en":"Move Above"}},{"code":"MOVEBELOW","classField":"fa fa-arrow-down fa-1","permission":{"ARER":"R"},"label":{"en":"Move Below"}},{"code":"MOVECANCEL","classField":"fa fa-ban fa-1","permission":{"ARER":"R"},"label":{"en":"Cancel Move"}}],"conditionField":"moveSelectedItem","conditionCheck":"NotNull"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_MOVE_OPTIONS'),'Move','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_MOVE_OPTIONS'),'Moverse','es',true);

INSERT INTO texts (default_text) VALUES ('Column Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Title');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_TABLE_TITLE',@lastid,'TABLE1','{"fieldML":"title"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_TITLE'),'Title','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_TITLE'),'Título','es',true);

INSERT INTO texts (default_text) VALUES ('Column Group');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Group');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Grupo de columnas');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_TABLE_GROUP',@lastid,'TABLE1','{"field":"group"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_GROUP'),'Group','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_GROUP'),'Grupo','es',true);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna Code');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_TABLE_CODE',@lastid,'TABLE1','{"field":"name"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_CODE'),'Code','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_CODE'),'Código','es',true);

INSERT INTO texts (default_text) VALUES ('Column Field Type');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Field Type');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tipo de campo de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_TABLE_FIELDTYPE',@lastid,'TABLE1','{"field":"fieldType"}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_FIELDTYPE'),'FieldType','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_FIELDTYPE'),'FieldType','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_FORMFIELD_PAGE'),'ADMIN_FORMFIELD_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa-regular fa-pen-to-square thub-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa-regular fa-trash-can thub-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}},{"code":"MOVESELECT","classField":"fa fa-arrows fa-1","permission":{"ARDR":"W"},"label":{"en":"Move"}}]}',6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_FORMFIELD_TABLE_OPTIONS'),'Options','es',true);
