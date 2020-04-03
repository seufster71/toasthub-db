
-- Social Group
INSERT INTO texts (default_text) VALUES ('Social Group Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Social Group Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Área Grupo Social');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'SOCIAL_GROUP_PAGE',@lastid,'MEMBER');

-- Form
INSERT INTO texts (default_text) VALUES ('Group Form - Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Group Form - Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de Grupo - Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_FORM_NAME',@lastid,'TXT',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.core.social.model.Group","field":"name","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_GROUP_FORM_NAME'),'','Name:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_GROUP_FORM_NAME'),'','Nombre:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Group Form - Description');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Group Form - Description');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario Group - Descripción');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_FORM_DESCRIPTION',@lastid,'TXT',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.core.social.model.Group","field":"description","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_GROUP_FORM_DESCRIPTION'),'','Description:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_GROUP_FORM_DESCRIPTION'),'','Descripción:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Group Form - Access');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Group Form - Access');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de Grupo - Acceso');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_FORM_ACCESS',@lastid,'TXT',2,25,null,'FORM1',null,'{"clazz":"org.toasthub.core.social.model.Group","field":"access","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_GROUP_FORM_ACCESS'),'','Access:','en',true,true,2,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_GROUP_FORM_ACCESS'),'','Acceso:','es',true,true,2,'');


-- Labels
INSERT INTO texts (default_text) VALUES ('Submit - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de enviar');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_FORM_SUBMIT_BUTTON',@lastid,'BUTTON1');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_GROUP_FORM_SUBMIT_BUTTON'),'Submit','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_GROUP_FORM_SUBMIT_BUTTON'),'Presentar','es',true,0);

INSERT INTO texts (default_text) VALUES ('Reset - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Reset - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de reinicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_FORM_RESET_BUTTON',@lastid,'BUTTON1');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_GROUP_FORM_RESET_BUTTON'),'Reset','en',true,1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_GROUP_FORM_RESET_BUTTON'),'Reajustar','es',true,1);


-- Texts
INSERT INTO texts (default_text) VALUES ('Form header modify group');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Form header modify group');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado Formulario modificar grupo');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_FORM_MODIFY_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_FORM_MODIFY_HEADER'),'Modify Group:','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_FORM_MODIFY_HEADER'),'Modificar grupo:','es',true);

INSERT INTO texts (default_text) VALUES ('Form header create group');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Form header create group');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado Formulario crear grupo');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_FORM_CREATE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_FORM_CREATE_HEADER'),'Create new Group:','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_FORM_CREATE_HEADER'),'Crear un grupo nuevo:','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab My Groups');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab My Groups');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha Principal Mis Grupos');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_MAIN_TAB_MYGROUPS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_MYGROUPS'),'My Groups','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_MYGROUPS'),'Mis Grupos','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab Joined Groups');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab Joined Groups');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha Principal Registrado Grupos');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_MAIN_TAB_JOINED',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_JOINED'),'Following','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_JOINED'),'Siguiente','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab Available Groups');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab Available Groups');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha Principal Grupos disponibles');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_MAIN_TAB_AVAILGROUPS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_AVAILGROUPS'),'Available Groups','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_AVAILGROUPS'),'Grupos disponibles','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab Private Invites');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab Private Invites');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha Principal Invita privadas');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_MAIN_TAB_INVITES',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_INVITES'),'Invites','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_INVITES'),'Invita','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab Public Requests');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab Public Requests');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitudes Principal Tab Públicas');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_MAIN_TAB_REQUESTS',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_REQUESTS'),'Requests','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_MAIN_TAB_REQUESTS'),'Requests','es',true);

INSERT INTO texts (default_text) VALUES ('Groups Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Groups Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solicitudes Principal Tab Públicas');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_GROUP_PAGE'),'SOCIAL_GROUP_GROUPS_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_GROUPS_HEADER'),'My Groups','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_GROUP_GROUPS_HEADER'),'Mis Grupos','es',true);
