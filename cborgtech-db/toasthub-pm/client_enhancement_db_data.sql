
-- Defect Page
INSERT INTO texts (default_text) VALUES ('Enhancement Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Enhancement Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de mejora');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_ENHANCEMENT_FORM',@lastid,'MEMBER');

-- FORM
INSERT INTO texts (default_text) VALUES ('Summary');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Summary');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Resumen');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_SUMMARY',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"summary","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_SUMMARY'),'','Summary:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_SUMMARY'),'','Resumen:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Description');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Description');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Descripción');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_DESCRIPTION',@lastid,'TXTAREA','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"description","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_DESCRIPTION'),'','Description:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_DESCRIPTION'),'','Descripción:','es',true,true,1,'');

INSERT INTO texts (default_text) VALUES ('Steps to recreate');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Steps to recreate');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Pasos para recrear');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_STEPSTORECREATE',@lastid,'TXTAREA','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"stepsToRecreate","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_STEPSTORECREATE'),'','Steps to recreate:','en',true,true,2,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_STEPSTORECREATE'),'','Pasos para recrear:','es',true,true,2,'');

INSERT INTO texts (default_text) VALUES ('Environment');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Environment');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Medio ambiente');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_ENVIRONMENT',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"environment","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ENVIRONMENT'),'','Environment:','en',true,true,3,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ENVIRONMENT'),'','Medio ambiente:','es',true,true,3,'');

INSERT INTO texts (default_text) VALUES ('Work around');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Work around');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Solución alterna');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_WORKAROUND',@lastid,'TXTAREA','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"workAround","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_WORKAROUND'),'','Work around:','en',true,false,4,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_WORKAROUND'),'','Solución alterna:','es',true,false,4,'');

INSERT INTO texts (default_text) VALUES ('Environment Users');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Environment Users');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Usuarios del entorno');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_ENVUSERS',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"envUsers","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ENVUSERS'),'','Environment Users:','en',true,false,5,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ENVUSERS'),'','Usuarios del entorno:','es',true,false,5,'');

INSERT INTO texts (default_text) VALUES ('Assign to');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Assign to');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Asignar a');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_ASSIGNEE',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"assignee","type":"Long"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ASSIGNEE'),'','Assign to:','en',true,false,6,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ASSIGNEE'),'','Asignar a:','es',true,false,6,'');

INSERT INTO texts (default_text) VALUES ('Severity');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Severity');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Gravedad');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_SEVERITY',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"severity","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_SEVERITY'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_SEVERITY_OPTIONS"}}','Severity:','en',true,true,7,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_SEVERITY'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_SEVERITY_OPTIONS"}}','Gravedad:','es',true,true,7,'');

INSERT INTO texts (default_text) VALUES ('Priority');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Priority');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prioridad');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_PRIORITY',@lastid,'INT','integer',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"priority","type":"int"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_PRIORITY'),'','Priority:','en',true,false,8,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_PRIORITY'),'','Prioridad:','es',true,false,8,'');

INSERT INTO texts (default_text) VALUES ('Item version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Item version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión del artículo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_ITEMVERSION',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"itemVersion","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ITEMVERSION'),'','Item version:','en',true,false,9,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ITEMVERSION'),'','Versión del artículo:','es',true,false,9,'');

INSERT INTO texts (default_text) VALUES ('External Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','External Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia externa');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_EXTERNALREF',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"externalRef","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_EXTERNALREF'),'','External Reference:','en',true,false,10,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_EXTERNALREF'),'','Referencia externa:','es',true,false,10,'');

INSERT INTO texts (default_text) VALUES ('Internal Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Internal Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia interna');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_INTERNALREF',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"internalRef","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_INTERNALREF'),'','Internal Reference:','en',true,false,11,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_INTERNALREF'),'','Referencia interna:','es',true,false,11,'');

INSERT INTO texts (default_text) VALUES ('Development Estimate');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Development Estimate');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estimación de desarrollo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_DEVELOPESTIMATE',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"developEstimate","type":"double"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_DEVELOPESTIMATE'),'','Development Estimate:','en',true,false,12,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_DEVELOPESTIMATE'),'','Estimación de desarrollo:','es',true,false,12,'');

INSERT INTO texts (default_text) VALUES ('Test Estimate');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Test Estimate');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estimación de prueba');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_TESTESTIMATE',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"testEstimate","type":"double"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_TESTESTIMATE'),'','Test Estimate:','en',true,false,12,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_TESTESTIMATE'),'','Estimación de prueba:','es',true,false,12,'');

INSERT INTO texts (default_text) VALUES ('Development Actual');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Development Actual');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Desarrollo Actual');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_DEVELOPACTUAL',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"developActual","type":"double"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_DEVELOPACTUAL'),'','Development Actual:','en',true,false,13,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_DEVELOPACTUAL'),'','Desarrollo Actual:','es',true,false,13,'');

INSERT INTO texts (default_text) VALUES ('Test Actual');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Test Actual');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prueba real');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_TESTACTUAL',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Enhancement","field":"testActual","type":"double"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_TESTACTUAL'),'','Test Actual:','en',true,false,14,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_TESTACTUAL'),'','Prueba real:','es',true,false,14,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_FORM'),'PM_ENHANCEMENT_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.core.general.model.Enhancement","field":"active","type":"Boolean"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,15,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_ENHANCEMENT_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,15,'');


-- Enhancement Page
INSERT INTO texts (default_text) VALUES ('Enhancement Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Enhancement Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de mejora');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_ENHANCEMENT_PAGE',@lastid,'MEMBER');

-- PAGE text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_ENHANCEMENT_PAGE_HEADER'),'Enhancements','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_ENHANCEMENT_PAGE_HEADER'),'Mejoras','es',true);

-- TABLE
INSERT INTO texts (default_text) VALUES ('Column ID');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column ID');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','ID de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_ID',@lastid,'TABLE1','{"field":"id","prefix":"EH-"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_ID'),'ID','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_ID'),'ID','es',true,0);


INSERT INTO texts (default_text) VALUES ('Column Summary');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Summary');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Resumen de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_SUMMARY',@lastid,'TABLE1','{"field":"summary"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_SUMMARY'),'Summary','en',true,1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_SUMMARY'),'Resumen','es',true,1);

INSERT INTO texts (default_text) VALUES ('Column Severity');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Severity');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Severidad de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_SEVERITY',@lastid,'TABLE1','{"field":"severity"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_SEVERITY'),'Severity','en',true,2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_SEVERITY'),'Gravedad','es',true,2);

INSERT INTO texts (default_text) VALUES ('Column Priority');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Priority');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prioridad de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_PRIORITY',@lastid,'TABLE1','{"field":"priority"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_PRIORITY'),'Priority','en',true,3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_PRIORITY'),'Prioridad','es',true,3);


INSERT INTO texts (default_text) VALUES ('Column Internal Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Internal Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia interna de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_INTERNALREF',@lastid,'TABLE1','{"field":"internalRef"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_INTERNALREF'),'Internal Reference','en',true,4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_INTERNALREF'),'Referencia interna','es',true,4);

INSERT INTO texts (default_text) VALUES ('Column External Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column External Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia externa de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_EXTERNALREF',@lastid,'TABLE1','{"field":"externalRef"}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_EXTERNALREF'),'External Reference','en',true,5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_EXTERNALREF'),'Referencia externa','es',true,5);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Status');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_STATUS'),'Status','en',true,6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_STATUS'),'Estado','es',true,6);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params) VALUES((SELECT id FROM pref_name WHERE name = 'PM_ENHANCEMENT_PAGE'),'PM_ENHANCEMENT_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"icon":"option1","classField":"fa fa-pencil-square-o fa-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"icon":"option2","classField":"fa fa-trash fa-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}}]}');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_OPTIONS'),'Options','en',true,7);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_ENHANCEMENT_TABLE_OPTIONS'),'Options','es',true,7);
