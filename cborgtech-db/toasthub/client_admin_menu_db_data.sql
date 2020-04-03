
-- ------------------- Menu Form
INSERT INTO texts (default_text) VALUES ('Menu item form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Menu item form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de elemento de menú');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'ADMIN_MENU_PAGE',@lastid,'ADMIN');

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_CODE',@lastid,'TXT',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Menu","field":"code","type":"String"}','{"modify":"disabled"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_CODE'),'','Code:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_CODE'),'','Código:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_TITLE',@lastid,'GRP','text',0,0,null,'FORM1','MTITLE','{"clazz":"org.toasthub.core.general.model.Menu","field":"title","type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_TITLE'),'','Title:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_TITLE'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Default Text Title');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Text Title');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Título de texto predeterminado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_TITLE_DEFAULT',@lastid,'TXT','text',0,0,null,'FORM1','MTITLE','{"clazz":"org.toasthub.core.general.model.Menu","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":"defaultText","type":"String"}},"method":"setTitleDefaultText","type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_TITLE_DEFAULT'),'','Default Text:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_TITLE_DEFAULT'),'','Texto predeterminado:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Title Text');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Title Text');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Texto del título');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_TITLE_TEXT',@lastid,'LTXT','text',0,0,null,'FORM1','MTITLE','{"clazz":"org.toasthub.core.general.model.Menu","field":{"title":{"clazz":"org.toasthub.core.general.model.Text","field":{"langTexts":{"clazz":"org.toasthub.core.general.model.LangText","type":"Set","fields":[{"field":"text","type":"String"},{"field":"lang","type":"String"}]}}}},"method":"setTitleMtext","type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_TITLE_TEXT'),'','Text:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_TITLE_TEXT'),'','Título:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('API Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','API Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión API');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_APIVERSION',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Menu","field":"apiVersion","type":"String"}','{"modify":"disabled"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_APIVERSION'),'','API Version:','en',true,true,2,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_APIVERSION'),'','Versión de la API:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('ADMIN Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','ADMIN Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión ADMIN');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_ADMINVERSION',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Menu","field":"ADMINVersion","type":"String"}','{"modify":"disabled"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_ADMINVERSION'),'','ADMIN Version:','en',true,true,3,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_ADMINVERSION'),'','Version de aplicacion:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Category');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Category');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Categoría');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_CATEGORY',@lastid,'SLT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Menu","field":"category","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"SYSADMIN","label":"SYSADMIN"},{"value":"LOGIN","label":"LOGIN"}]}','Category:','en',true,true,4,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_CATEGORY'),'{"options":[{"value":"PUBLIC","label":"PUBLIC","default":true},{"value":"MEMBER","label":"MEMBER"},{"value":"ADMIN","label":"ADMIN"},{"value":"SYSADMIN","label":"SYSADMIN"},{"value":"LOGIN","label":"LOGIN"}]}','Categoría:','es',true,true,4,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Menu","field":"active","type":"Boolean"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,6,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Nombre deila:','es',true,true,6,'');


-- ---- Menu Item Form

INSERT INTO texts (default_text) VALUES ('Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_ITEM_FORM_CODE',@lastid,'TXT','text',0,0,null,'MENU_ITEM_FORM',null,'{"clazz":"org.toasthub.core.general.model.MenuItem","field":"code","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_CODE'),'','Code:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_CODE'),'','Código:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_ITEM_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'MENU_ITEM_FORM',null,'{"clazz":"org.toasthub.core.general.model.MenuItem","field":"active","type":"Boolean"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Active","default":true},{"value":false,"label":"Disable"}]}','Status:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_ACTIVE'),'{"options":[{"value":true,"label":"Activo","default":true},{"value":false,"label":"Inhabilitar"}]}','Nombre deila:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Values');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Values');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valores');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_ITEM_FORM_VALUES',@lastid,'GRP','text',0,0,null,'MENU_ITEM_FORM','MVALUES','{"clazz":"org.toasthub.core.general.model.MenuItem","field":{"values":{"clazz":"org.toasthub.core.general.model.MenuItemValue","type":"Set"}},"method":"setMValues","type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_VALUES'),'','Values:','en',true,true,2,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_VALUES'),'','Valores:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Value');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Value');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Valor');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_ITEM_FORM_VALUE',@lastid,'MTXT','text',0,0,null,'MENU_ITEM_FORM','MVALUES','{"clazz":"org.toasthub.core.general.model.MenuItem","field":"value","type":"String","method":"setMValues"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_VALUE'),'','Value:','en',true,false,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_VALUE'),'','Valor:','es',true,false,0,'');

INSERT INTO texts (default_text) VALUES ('Href');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Href');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Href');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_ITEM_FORM_HREF',@lastid,'MTXT','text',0,0,null,'MENU_ITEM_FORM','MVALUES','{"clazz":"org.toasthub.core.general.model.MenuItem","field":"href","type":"String","method":"setMValues"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_HREF'),'','Href:','en',true,false,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_HREF'),'','Href:','es',true,false,1,'');

INSERT INTO texts (default_text) VALUES ('Image');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Image');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Imagen');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_ITEM_FORM_IMAGE',@lastid,'MTXT','text',0,0,null,'MENU_ITEM_FORM','MVALUES','{"clazz":"org.toasthub.core.general.model.MenuItem","field":"image","type":"String","method":"setMValues"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_IMAGE'),'','Image:','en',true,false,2,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_IMAGE'),'','Imagen:','es',true,false,2,'');

INSERT INTO texts (default_text) VALUES ('Rendered');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rendered');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rendido');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_ITEM_FORM_RENDERED',@lastid,'MBLN','radioH',0,0,null,'MENU_ITEM_FORM','MVALUES','{"clazz":"org.toasthub.core.general.model.MenuItem","field":"rendered","type":"Boolean","method":"setMValues"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_RENDERED'),'{"options":[{"value":true,"label":"True","default":true},{"value":false,"label":"False"}]}','Rendered:','en',true,true,3,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'ADMIN_MENU_ITEM_FORM_RENDERED'),'{"options":[{"value":true,"label":"Cierto","default":true},{"value":false,"label":"Falso"}]}','Rendido:','es',true,true,3,'');



-- ------------------- Menu Page

INSERT INTO texts (default_text) VALUES ('Menu Page - Page header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Menu Page - Page header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de menú - Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_MENU_PAGE_HEADER'),'Menus','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'ADMIN_MENU_PAGE_HEADER'),'Menús','es',true);


-- Admin Menu Table

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_TABLE_NAME',@lastid,'TABLE1','{"fieldML":"title"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_NAME'),'Name','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_NAME'),'Nombre','es',true,0);

INSERT INTO texts (default_text) VALUES ('Column Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Código de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_TABLE_CODE',@lastid,'TABLE1','{"field":"code"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_CODE'),'Code','en',true,1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_CODE'),'Código','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column API Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column API Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión API de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_TABLE_APIVERSION',@lastid,'TABLE1','{"field":"apiVersion"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_APIVERSION'),'API Version','en',true,2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_APIVERSION'),'Versión API','es',true,2);

INSERT INTO texts (default_text) VALUES ('Column APP Version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column APP Version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión de la aplicación de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_TABLE_APPVERSION',@lastid,'TABLE1','{"field":"appVersion"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_APPVERSION'),'APP Version','en',true,3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_APPVERSION'),'Versión API','es',true,3);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_MENU_PAGE'),'ADMIN_MENU_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_STATUS'),'Status','en',true,4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'ADMIN_MENU_TABLE_STATUS'),'Estado','es',true,4);
