
-- FORM
INSERT INTO texts (default_text) VALUES ('Task Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Task Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de tarea');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_TASK_FORM',@lastid,'MEMBER');

INSERT INTO texts (default_text) VALUES ('Summary');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Summary');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Resumen');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_SUMMARY',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Task","field":"summary","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_SUMMARY'),'','Summary:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_SUMMARY'),'','Resumen:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Description');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Description');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Descripción');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_DESCRIPTION',@lastid,'TXTAREA','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Task","field":"description","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_DESCRIPTION'),'','Description:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_DESCRIPTION'),'','Descripción:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Assign to');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Assign to');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Asignar a');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_ASSIGNEE',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"assignee","type":"Long"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_ASSIGNEE'),'','Assign to:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_ASSIGNEE'),'','Asignar a:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Severity');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Severity');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Gravedad');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_SEVERITY',@lastid,'SLT','select',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"severity","type":"String"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_SEVERITY'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_SEVERITY_OPTIONS"}}','Severity:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_SEVERITY'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_SEVERITY_OPTIONS"}}','Gravedad:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Priority');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Priority');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prioridad');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_PRIORITY',@lastid,'INT','integer',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"priority","type":"int"}',4);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_PRIORITY'),'','Priority:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_PRIORITY'),'','Prioridad:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Item version');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Item version');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Versión del artículo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_ITEMVERSION',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"itemVersion","type":"String"}',5);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_ITEMVERSION'),'','Item version:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_ITEMVERSION'),'','Versión del artículo:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('External Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','External Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia externa');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_EXTERNALREF',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"externalRef","type":"String"}',6);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_EXTERNALREF'),'','External Reference:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_EXTERNALREF'),'','Referencia externa:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Internal Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Internal Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia interna');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_INTERNALREF',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"internalRef","type":"String"}',7);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_INTERNALREF'),'','Internal Reference:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_INTERNALREF'),'','Referencia interna:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Development Estimate');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Development Estimate');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estimación de desarrollo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_WORKESTIMATE',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"workEstimate","type":"double"}',8);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_WORKESTIMATE'),'','Development Estimate:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_WORKESTIMATE'),'','Estimación de desarrollo:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Test Estimate');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Test Estimate');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estimación de prueba');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_TESTESTIMATE',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"testEstimate","type":"double"}',9);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_TESTESTIMATE'),'','Test Estimate:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_TESTESTIMATE'),'','Estimación de prueba:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Development Actual');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Development Actual');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Desarrollo Actual');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_WORKACTUAL',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"workpActual","type":"double"}',10);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_WORKACTUAL'),'','Development Actual:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_WORKACTUAL'),'','Desarrollo Actual:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Test Actual');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Test Actual');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prueba real');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_TESTACTUAL',@lastid,'DBL','double',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Defect","field":"testActual","type":"double"}',11);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_TESTACTUAL'),'','Test Actual:','en',true,false,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_TESTACTUAL'),'','Prueba real:','es',true,false,'');

INSERT INTO texts (default_text) VALUES ('Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha de inicio');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_STARTDATE',@lastid,'DATETIME','date',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Task","field":"startDate","type":"Instant"}',12);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_STARTDATE'),'','Start Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_STARTDATE'),'','Fecha de inicio:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('End Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','End Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha final');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_COMPLETEDATE',@lastid,'DATETIME','date',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Task","field":"completeDate","type":"Instant"}',13);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_COMPLETEDATE'),'','Complete Date:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_COMPLETEDATE'),'','Fecha final:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_FORM'),'PM_TASK_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Task","field":"active","type":"Boolean"}',14);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_TASK_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');

-- Page
INSERT INTO texts (default_text) VALUES ('Task Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Task Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de tareas');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_TASK_PAGE',@lastid,'MEMBER');

-- PAGE text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_TASK_PAGE_HEADER'),'Tasks','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_TASK_PAGE_HEADER'),'Tareas','es',true);

-- TABLE
INSERT INTO texts (default_text) VALUES ('Column ID');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column ID');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Id de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_ID',@lastid,'TABLE1','{"field":"id","prefix":"T-"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_ID'),'ID','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_ID'),'ID','es',true);

INSERT INTO texts (default_text) VALUES ('Column Summary');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Summary');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Resumen de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_SUMMARY',@lastid,'TABLE1','{"field":"summary"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_SUMMARY'),'Summary','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_SUMMARY'),'Resumen','es',true);

INSERT INTO texts (default_text) VALUES ('Column Severity');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Severity');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Severidad de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_SEVERITY',@lastid,'TABLE1','{"field":"severity"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_SEVERITY'),'Severity','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_SEVERITY'),'Gravedad','es',true);

INSERT INTO texts (default_text) VALUES ('Column Priority');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Priority');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Prioridad de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_PRIORITY',@lastid,'TABLE1','{"field":"priority"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_PRIORITY'),'Priority','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_PRIORITY'),'Prioridad','es',true);

INSERT INTO texts (default_text) VALUES ('Column Internal Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Internal Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia interna de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_INTERNALREF',@lastid,'TABLE1','{"field":"internalRef"}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_INTERNALREF'),'Internal Reference','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_INTERNALREF'),'Referencia interna','es',true);

INSERT INTO texts (default_text) VALUES ('Column External Reference');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column External Reference');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Referencia externa de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_EXTERNALREF',@lastid,'TABLE1','{"field":"externalRef"}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_EXTERNALREF'),'External Reference','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_EXTERNALREF'),'Referencia externa','es',true);

INSERT INTO texts (default_text) VALUES ('Column Workflow');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Workflow');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Flujo de trabajo de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_WORKFLOW',@lastid,'TABLE1','{"fieldObject":"workflowStep","field":"name"}',6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_WORKFLOW'),'Workflow','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_WORKFLOW'),'Flujo de trabajo','es',true);

INSERT INTO texts (default_text) VALUES ('Column Start Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Start Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha de inicio de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_STARTDATE',@lastid,'TABLE1','{"field":"startDate"}',7);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_STARTDATE'),'Start Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_STARTDATE'),'Fecha de inicio','es',true);

INSERT INTO texts (default_text) VALUES ('Column Complete Date');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Complete Date');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Fecha completa de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_COMPLETEDATE',@lastid,'TABLE1','{"field":"completeDate"}',8);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_COMPLETEDATE'),'Complete Date','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_COMPLETEDATE'),'Fecha completa','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Status');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',9);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_TASK_PAGE'),'PM_TASK_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa-regular fa-pen-to-square thub-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa-regular fa-trash-can thub-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}}]}',10);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_TASK_TABLE_OPTIONS'),'Options','es',true);
