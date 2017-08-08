-- Social Event
INSERT INTO texts (default_text) VALUES ('Social Event Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Social Event Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Área para eventos sociales');
INSERT INTO page_name (name,text_id,category) VALUES ('SOCIAL_EVENT',@lastid,'MEMBER');

-- Form
INSERT INTO texts (default_text) VALUES ('Event Form - Message');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Event Form - Message');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha evento - Mensaje');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_EVENT'),'SOCIAL_EVENT_FORM_MESSAGE',@lastid,'TXT','textarea',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.social.model.Event","field":"message","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_MESSAGE'),'What do you see?','Message','en',true,false,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_MESSAGE'),'¿Que ves?','Mensaje','es',true,false,0,'',null);

INSERT INTO texts (default_text) VALUES ('Event Form - Type Code');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Event Form - Type Code');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha Evento - Código Tipo');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_EVENT'),'SOCIAL_EVENT_FORM_TYPE_CODE',@lastid,'TXT','hidden',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.social.model.Event","field":"code","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_TYPE_CODE'),'','Title','en',true,false,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_TYPE_CODE'),'','Título','es',true,false,0,'',null);

INSERT INTO texts (default_text) VALUES ('Event Form - Latitude');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Event Form - Latitude');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha evento - Latitud');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_EVENT'),'SOCIAL_EVENT_FORM_LATITUDE',@lastid,'TXTDOUBLE','hidden',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.social.model.Event","field":"latitude","type":"Double"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_LATITUDE'),'','Latitude','en',true,false,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_LATITUDE'),'','Latitud','es',true,false,0,'',null);

INSERT INTO texts (default_text) VALUES ('Event Form - Longitude');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Event Form - Longitude');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha evento - Longitud');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_EVENT'),'SOCIAL_EVENT_FORM_LONGITUDE',@lastid,'TXTDOUBLE','hidden',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.social.model.Event","field":"longitude","type":"Double"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_LONGITUDE'),'','Longitude','en',true,false,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_LONGITUDE'),'','Longitud','es',true,false,0,'',null);

INSERT INTO texts (default_text) VALUES ('Event Form - Altitude');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Event Form - Altitude');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha evento - Altitud');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_EVENT'),'SOCIAL_EVENT_FORM_ALTITUDE',@lastid,'TXTDOUBLE','hidden',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.social.model.Event","field":"altitude","type":"Double"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_ALTITUDE'),'','Altitude','en',true,false,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_ALTITUDE'),'','Altitud','es',true,false,0,'',null);

INSERT INTO texts (default_text) VALUES ('Event Form - Accuracy');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Event Form - Accuracy');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha evento - Exactitud');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_EVENT'),'SOCIAL_EVENT_FORM_ACCURACY',@lastid,'TXTFLOAT','hidden',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.social.model.Event","field":"accuracy","type":"Float"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_ACCURACY'),'','Accuracy','en',true,false,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_ACCURACY'),'','Exactitud','es',true,false,0,'',null);

INSERT INTO texts (default_text) VALUES ('Event Form - Provider');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Event Form -Provider');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha evento - Proveedor');
INSERT INTO page_form_field_name (page_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,created) VALUES((SELECT id FROM page_name WHERE name = 'SOCIAL_EVENT'),'SOCIAL_EVENT_FORM_PROVIDER',@lastid,'TXT','hidden',2,25,null,'MAIN',null,'{"clazz":"org.toasthub.core.social.model.Event","field":"provider","type":"String"}',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_PROVIDER'),'','Provider','en',true,false,0,'',null);
INSERT INTO page_form_field_value (page_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation,created) VALUES ((SELECT id FROM page_form_field_name WHERE name = 'SOCIAL_EVENT_FORM_PROVIDER'),'','Proveedor','es',true,false,0,'',null);
