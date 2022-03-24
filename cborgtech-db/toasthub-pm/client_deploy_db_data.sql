
-- Deploy Page
INSERT INTO texts (default_text) VALUES ('Deploy Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Deploy Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de implementación');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_DEPLOY_FORM',@lastid,'MEMBER');

-- FORM
INSERT INTO texts (default_text) VALUES ('Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"name","type":"String"}',0);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_NAME'),'','Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_NAME'),'','Nombre:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Cron Schedule');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Cron Schedule');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cronograma');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_CRON',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"cronSchedule","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_CRON'),'','Cron Schedule:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_CRON'),'','Cronograma:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('SCM User');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SCM User');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Usuario SCM');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_SCM_USER',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"scmUser","type":"String"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SCM_USER'),'','SCM User:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SCM_USER'),'','Usuario SCM:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('SCM Password');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SCM Password');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Contraseña SCM');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_SCM_PASSWORD',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"scmPassword","type":"String"}',3);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SCM_PASSWORD'),'','SCM Password:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SCM_PASSWORD'),'','Contraseña SCM:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Server Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Server Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre del servidor');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_SERVER_NAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"serverName","type":"String"}',4);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SERVER_NAME'),'','Server Name:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SERVER_NAME'),'','Nombre del servidor:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('SSH Username');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SSH Username');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de usuario SSH');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_SSH_USERNAME',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"sshUsername","type":"String"}',5);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SSH_USERNAME'),'','SSH Username:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SSH_USERNAME'),'','Nombre de usuario SSH:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('SSH Passphrase');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SSH Passphrase');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Frase de contraseña SSH');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_SSH_PASSPHRASE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"sshPassphrase","type":"String"}',6);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SSH_PASSPHRASE'),'','SSH Passphrase:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SSH_PASSPHRASE'),'','Frase de contraseña SSH:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('SSH Token');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','SSH Token');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ficha SSH');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_SSH_TOKEN',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"sshToken","type":"String"}',7);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SSH_TOKEN'),'','SSH Token:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_SSH_TOKEN'),'','Ficha SSH:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Workspace');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Workspace');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','espacio de trabajo');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_WORKSPACE',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"workspace","type":"String"}',8);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_WORKSPACE'),'toasthubWorkspace','Workspace:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_WORKSPACE'),'toasthubWorkspace','espacio de trabajo:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Staging Directory');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Staging Directory');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Directorio provisional');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_STAGING_DIR',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"stagingDir","type":"String"}',9);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_STAGING_DIR'),'toasthubBuilds','Staging Directory:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_STAGING_DIR'),'toasthubBuilds','Directorio provisional:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_FORM'),'PM_DEPLOY_FORM_ACTIVE',@lastid,'BLN','radioH',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.Deploy","field":"active","type":"Boolean"}',10);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Status:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_FORM_ACTIVE'),'{"referPref":{"prefName":"GLOBAL_PAGE","prefItem":"GLOBAL_PAGE_ACTIVE_OPTIONS"}}','Estado:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Deploy Page');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Deploy Page');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Página de implementación');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_DEPLOY_PAGE',@lastid,'MEMBER');

-- PAGE text
INSERT INTO texts (default_text) VALUES ('Page Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Page Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Encabezado de página');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_PAGE_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_DEPLOY_PAGE_HEADER'),'Deploy','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'PM_DEPLOY_PAGE_HEADER'),'Desplegar','es',true);

-- TABLE
INSERT INTO texts (default_text) VALUES ('Column Name');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Name');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Nombre de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_TABLE_NAME',@lastid,'TABLE1','{"field":"name"}',0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_NAME'),'Name','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_NAME'),'Nombre','es',true);

INSERT INTO texts (default_text) VALUES ('Column Last Success');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Last Success');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de la columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_TABLE_LAST_SUCCESS',@lastid,'TABLE1','{"fieldDateTime":"lastSuccess"}',1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_LAST_SUCCESS'),'Last Success','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_LAST_SUCCESS'),'Último éxitoEstado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Last Fail');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Last Fail');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna Último error');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_TABLE_LAST_FAIL',@lastid,'TABLE1','{"fieldDateTime":"lastFail"}',2);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_LAST_FAIL'),'Last Fail','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_LAST_FAIL'),'último fallo','es',true);

INSERT INTO texts (default_text) VALUES ('Column Last Duration');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Last Duration');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Columna Última Duración');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_TABLE_LAST_DURATION',@lastid,'TABLE1','{"field":"lastDuration"}',3);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_LAST_DURATION'),'Last Duration','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_LAST_DURATION'),'Última duración','es',true);

INSERT INTO texts (default_text) VALUES ('Column Deploy Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Deploy Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de implementación de columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_TABLE_RUN_STATUS',@lastid,'TABLE1','{"field":"runStatus"}',4);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_RUN_STATUS'),'Deploy Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_RUN_STATUS'),'Estado de implementación','es',true);

INSERT INTO texts (default_text) VALUES ('Column Status');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Status');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado de la columna');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_TABLE_STATUS',@lastid,'TABLE1','{"fieldBool":"active","labelTrue":{"defaultText":"Active","en":"Active","es":"Activo"},"labelFalse":{"defaultText":"Disabled","en":"Disabled","es":"Inhabilitar"}}',5);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_STATUS'),'Status','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_STATUS'),'Estado','es',true);

INSERT INTO texts (default_text) VALUES ('Column Options');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Column Options');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Estado Options');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name,optional_params,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PAGE'),'PM_DEPLOY_TABLE_OPTIONS',@lastid,'TABLE1','{"fieldIcon":[{"code":"MODIFY","classField":"fa fa-pencil-square-o fa-1","permission":{"ARER":"R"},"label":{"en":"Modify"}},{"code":"DELETE","classField":"fa fa-trash fa-1","permission":{"ARDR":"W"},"label":{"en":"Delete"}},{"code":"SHARE","classField":"fa fa-share-alt fa-1","permission":{"ARDR":"W"},"label":{"en":"Share"}},{"code":"BUILD","classField":"fa fa-circle-o-notch fa-1","permission":{"ARDR":"W"},"label":{"en":"Build"}}]}',6);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_OPTIONS'),'Options','en',true);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered) VALUES ((SELECT id FROM pref_label_name WHERE name = 'PM_DEPLOY_TABLE_OPTIONS'),'Options','es',true);


-- Deploy Settings
-- Deploy Page
INSERT INTO texts (default_text) VALUES ('Deploy Settings Form');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Deploy Settings Form');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Formulario de configuración de implementación');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'PM_DEPLOY_PIPELINE_FORM',@lastid,'MEMBER');

-- FORM
INSERT INTO texts (default_text) VALUES ('Repository URL');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Repository URL');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','URL del repositorio');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PIPELINE_FORM'),'PM_DEPLOY_PIPELINE_FORM_REPO_URL',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.DeploySettings","field":"repositoryUrl","type":"String"}',1);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_PIPELINE_FORM_REPO_URL'),'','Repository URL:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_PIPELINE_FORM_REPO_URL'),'','URL del repositorio:','es',true,true,'');

INSERT INTO texts (default_text) VALUES ('Branch');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Branch');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rama');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model,sort_order) VALUES((SELECT id FROM pref_name WHERE name = 'PM_DEPLOY_PIPELINE_FORM'),'PM_DEPLOY_PIPELINE_FORM_BRANCH',@lastid,'TXT','text',0,0,null,'FORM1',null,'{"clazz":"org.toasthub.pm.model.DeploySettings","field":"branch","type":"String"}',2);
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_PIPELINE_FORM_BRANCH'),'','Branch:','en',true,true,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'PM_DEPLOY_PIPELINE_FORM_BRANCH'),'','Rama:','es',true,true,'');

