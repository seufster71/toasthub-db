-- Social Library
INSERT INTO texts (default_text) VALUES ('Social Library Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Social Library Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Biblioteca Área Social');
INSERT INTO page_name (name,text_id,category) VALUES ('SOCIAL_LIBRARY',@lastid,'MEMBER');

-- Form
INSERT INTO texts (default_text) VALUES ('Library Form - Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library Form - Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario Biblioteca - Nombre');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_NAME',@lastid,'TXT',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.general.model.Library","field":"name","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_LIBRARY_FORM_NAME'),'','Name:','en',true,true,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_LIBRARY_FORM_NAME'),'','Nombre:','es',true,true,0,'',null);

-- Labels
INSERT INTO texts (default_text) VALUES ('Submit - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de enviar');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_SUBMIT_BUTTON',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_SUBMIT_BUTTON'),'Submit','en',true,0,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_SUBMIT_BUTTON'),'Presentar','es',true,0,null);

INSERT INTO texts (default_text) VALUES ('Reset - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Reset - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de reinicio');
INSERT INTO page_label_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_RESET_BUTTON',@lastid,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_RESET_BUTTON'),'Reset','en',true,1,null);
INSERT INTO page_label_value (page_label_name_id,label_value,lang,rendered,sort_order,created) VALUES ((SELECT id FROM page_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_RESET_BUTTON'),'Reajustar','es',true,1,null);

-- Texts
INSERT INTO texts (default_text) VALUES ('Library form - modify header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library form - modify header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Forma Biblioteca - modificar cabecera');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_MODIFY_HEADER',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_MODIFY_HEADER'),'Modify directory:','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_MODIFY_HEADER'),'Modificar directorio:','es',true,null);

INSERT INTO texts (default_text) VALUES ('Library form - create header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library form - create header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Forma Biblioteca - crear cabecera');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_CREATE_HEADER',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_CREATE_HEADER'),'Create directory:','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_CREATE_HEADER'),'Crear directorio:','es',true,null);

INSERT INTO texts (default_text) VALUES ('Main Tab my directories and files');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab my directories and files');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha Principal mis directorios y archivos');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_MAIN_TAB_MINE',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_MINE'),'My Directories and Files','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_MINE'),'Mis directorios y archivos','es',true,null);

INSERT INTO texts (default_text) VALUES ('Main Tab shared directories and files');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab shared directories and files');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tab principal directorios y archivos compartidos');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_MAIN_TAB_SHARED',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_SHARED'),'Shared Directories and Files','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_SHARED'),'Directorios y archivos compartidos','es',true,null);

INSERT INTO texts (default_text) VALUES ('Library Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Biblioteca de Cabecera');
INSERT INTO page_text_name (page_name_id,name,text_id,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_HEADER',@lastid,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_HEADER'),'File and Image Library','en',true,null);
INSERT INTO page_text_value (page_text_name_id,text_value,lang,rendered,created) VALUES ((SELECT id FROM page_text_name WHERE name = 'SOCIAL_LIBRARY_HEADER'),'Archivo y Biblioteca de imágenes','es',true,null);
