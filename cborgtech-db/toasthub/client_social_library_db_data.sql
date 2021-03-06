-- Social Library
INSERT INTO texts (default_text) VALUES ('Social Library Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Social Library Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Biblioteca Área Social');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'SOCIAL_LIBRARY',@lastid,'MEMBER');

-- Form
INSERT INTO texts (default_text) VALUES ('Library Form - Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library Form - Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario Biblioteca - Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_NAME',@lastid,'TXT',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Library","field":"name","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_LIBRARY_FORM_NAME'),'','Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_LIBRARY_FORM_NAME'),'','Nombre:','es',true,true,'');

-- Labels
INSERT INTO texts (default_text) VALUES ('Submit - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de enviar');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_SUBMIT_BUTTON',@lastid,'BUTTON1',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_SUBMIT_BUTTON'),'Submit','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_SUBMIT_BUTTON'),'Presentar','es',true);

INSERT INTO texts (default_text) VALUES ('Reset - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Reset - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de reinicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_RESET_BUTTON',@lastid,'BUTTON1',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_RESET_BUTTON'),'Reset','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_LIBRARY_FORM_RESET_BUTTON'),'Reajustar','es',true);

-- Texts
INSERT INTO texts (default_text) VALUES ('Library form - modify header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library form - modify header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Forma Biblioteca - modificar cabecera');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_MODIFY_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_MODIFY_HEADER'),'Modify directory:','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_MODIFY_HEADER'),'Modificar directorio:','es',true);

INSERT INTO texts (default_text) VALUES ('Library form - create header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library form - create header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Forma Biblioteca - crear cabecera');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_FORM_CREATE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_CREATE_HEADER'),'Create directory:','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_FORM_CREATE_HEADER'),'Crear directorio:','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab my directories and files');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab my directories and files');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha Principal mis directorios y archivos');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_MAIN_TAB_MINE',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_MINE'),'My Directories and Files','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_MINE'),'Mis directorios y archivos','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab shared directories and files');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab shared directories and files');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Tab principal directorios y archivos compartidos');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_MAIN_TAB_SHARED',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_SHARED'),'Shared Directories and Files','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_MAIN_TAB_SHARED'),'Directorios y archivos compartidos','es',true);

INSERT INTO texts (default_text) VALUES ('Library Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Library Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Biblioteca de Cabecera');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_LIBRARY'),'SOCIAL_LIBRARY_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_HEADER'),'File and Image Library','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_LIBRARY_HEADER'),'Archivo y Biblioteca de imágenes','es',true);
