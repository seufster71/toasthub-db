
-- FORM
INSERT INTO texts (default_text) VALUES ('Workflow Step Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Workflow Step Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de paso de flujo de trabajo');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_WORKFLOW_STEP_FORM',@lastid,'MEMBER');


INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_FORM'),'PM_WORKFLOW_STEP_FORM_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.WorkflowStep","field":"name","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_WORKFLOW_STEP_FORM_NAME'),'','Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_WORKFLOW_STEP_FORM_NAME'),'','Nombre:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Next');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Next');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Próximo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_FORM'),'PM_WORKFLOW_STEP_FORM_NEXT',@lastid,'SLTMULTI','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.WorkflowStep","field":"nextStep","type":"JSONArray"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_WORKFLOW_STEP_FORM_NEXT'),'{"optionRef":"nextOptions"}','Jump To:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_WORKFLOW_STEP_FORM_NEXT'),'{"optionRef":"nextOptions"}','Salta a:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_FORM'),'PM_WORKFLOW_STEP_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.WorkflowStep","field":"active","type":"Boolean"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_WORKFLOW_STEP_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_WORKFLOW_STEP_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');

-- Page
INSERT INTO texts (default_text) VALUES ('Workflow Step Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Workflow Step Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de paso del flujo de trabajo');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_WORKFLOW_STEP_PAGE',@lastid,'MEMBER');

-- PAGE text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_PAGE'),'PM_WORKFLOW_STEP_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_WORKFLOW_STEP_PAGE_HEADER'),'Workflow Step','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_WORKFLOW_STEP_PAGE_HEADER'),'Paso de flujo de trabajo','es',true);

-- TABLE
INSERT INTO texts (default_text) VALUES ('Column Move Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Move Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Opción de movimiento de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_PAGE'),'PM_WORKFLOW_STEP_TABLE_MOVE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MOVEABOVE","classField":"fa-solid fa-arrow-up thub-1","permission":{"ARER":"R"},"label":{"en":"Move Above"}},{"code":"MOVEBELOW","classField":"fa-solid fa-arrow-down thub-1","permission":{"ARER":"R"},"label":{"en":"Move Below"}},{"code":"MOVECANCEL","classField":"fa-solid fa-ban thub-1","permission":{"ARER":"R"},"label":{"en":"Cancel Move"}}],"conditionField":"moveSelectedItem","conditionCheck":"NotNull"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_MOVE_OPTIONS'),'Move','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_MOVE_OPTIONS'),'Moverse','es',true);

INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_PAGE'),'PM_WORKFLOW_STEP_TABLE_NAME',@lastid,'TABLE1','{"field":"name"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Next');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Next');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_PAGE'),'PM_WORKFLOW_STEP_TABLE_NEXT',@lastid,'TABLE1','{"fieldJSON":"nextStep","fieldLookup":"nextOptions"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_NEXT'),'Jump To','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_NEXT'),'Salta a','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Column Status');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_PAGE'),'PM_WORKFLOW_STEP_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_WORKFLOW_STEP_PAGE'),'PM_WORKFLOW_STEP_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa-regular fa-pen-to-square thub-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa-regular fa-trash-can thub-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}},{"code":"MOVESELECT","classField":"fa-solid fa-arrows-up-down thub-1","permission":{"ARDR":"W"},"label":{"en":"Move"}}]}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_WORKFLOW_STEP_TABLE_OPTIONS'),'Options','es',true);
