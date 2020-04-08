
-- Social Acquaintance Email Invite Form
INSERT INTO texts (default_text) VALUES ('Social Aquaintance Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Social Aquaintance Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Aquaintance Área Social');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'SOCIAL_ACQUAINTANCE_PAGE',@lastid,'MEMBER');

-- Form
INSERT INTO texts (default_text) VALUES ('Email Address');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email Address');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dirección de correo electrónico');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FORM_EMAIL',@lastid,'TXT','email',2,25,null,'EMAIL_INVITE_FORM',null,'{"clazz":"org.toasthub.core.general.model.EmailInvite","field":"receiverEmail","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FORM_EMAIL'),'-Valid email address-','Email Address:','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FORM_EMAIL'),'-Dirección de email válida-','Dirección de correo electrónico:','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Message Input');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Message Input');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Mensaje de entrada');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FORM_MESSAGE',@lastid,'TXTA','textarea',2,25,null,'EMAIL_INVITE_FORM',null,'{"clazz":"org.toasthub.core.general.model.EmailInvite","field":"message","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FORM_MESSAGE'),'-Join me on ToastHub-','Message:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FORM_MESSAGE'),'-Únete a mí en ToastHub-','Mensaje:','es',true,true,1,'');

-- Labels
INSERT INTO texts (default_text) VALUES ('Submit - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de enviar');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_SUBMIT_BUTTON',@lastid,'BUTTON_EMAIL_INVITE');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_SUBMIT_BUTTON'),'Submit','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_SUBMIT_BUTTON'),'Search es','es',true,0);

INSERT INTO texts (default_text) VALUES ('Reset - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Reset - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de reinicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_RESET_BUTTON',@lastid,'BUTTON_EMAIL_INVITE');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_RESET_BUTTON'),'Reset','en',true,1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_RESET_BUTTON'),'Reajustar','es',true,1);

-- Texts
INSERT INTO texts (default_text) VALUES ('Email Invite Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email Invite Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email Invitar Exitosa');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_SUCCESSFUL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_SUCCESSFUL'),'Email Invite Successfully Sent','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_SUCCESSFUL'),'Invitar a un correo electrónico enviado con éxito','es',true);

INSERT INTO texts (default_text) VALUES ('Email Invite Failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Email Invite Failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Email invitación Falló');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FAILED',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FAILED'),'Email Invite Failed','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_EMAIL_INVITE_FAILED'),'Email Invitar Error','es',true);


-- Form
INSERT INTO texts (default_text) VALUES ('Receiver Id');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Receiver Id');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Receiver Id');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_INVITE_FORM_RECEIVER_ID',@lastid,'HDN','hidden',2,25,null,'INVITE_FORM',null,'{"clazz":"org.toasthub.core.general.model.Invite","field":{"receiver":{"clazz":"org.toasthub.core.general.model.AppUser","field":"id","type":"Long"}},"type":"Object"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_FORM_RECEIVER_ID'),'','','en',true,true,0,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_FORM_RECEIVER_ID'),'','','es',true,true,0,'');

INSERT INTO texts (default_text) VALUES ('Message Input');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Message Input');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Mensaje de entrada');
INSERT INTO pref_form_field_name (pref_name_id,name,text_id,field_type,html_type,row_count,column_count,class_name,group_name,sub_group_name,class_model) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_INVITE_FORM_MESSAGE',@lastid,'TXTA','textarea',2,25,null,'INVITE_FORM',null,'{"clazz":"org.toasthub.core.general.model.Invite","field":"message","type":"String"}');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_FORM_MESSAGE'),'-I would like to connect-','Message:','en',true,true,1,'');
INSERT INTO pref_form_field_value (pref_form_field_name_id,field_value,field_label,lang,rendered,required,sort_order,validation) VALUES ((SELECT id FROM pref_form_field_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_FORM_MESSAGE'),'-Me gustaría conectar-','Mensaje:','es',true,true,1,'');

-- Labels
INSERT INTO texts (default_text) VALUES ('Submit - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Submit - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de enviar');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_INVITE_SUBMIT_BUTTON',@lastid,'BUTTON_INVITE');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_SUBMIT_BUTTON'),'Submit','en',true,0);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_SUBMIT_BUTTON'),'Search es','es',true,0);

INSERT INTO texts (default_text) VALUES ('Reset - Button');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Reset - Button');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Botón de reinicio');
INSERT INTO pref_label_name (pref_name_id,name,text_id,group_name) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_INVITE_RESET_BUTTON',@lastid,'BUTTON_INVITE');
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_RESET_BUTTON'),'Reset','en',true,1);
INSERT INTO pref_label_value (pref_label_name_id,label_value,lang,rendered,sort_order) VALUES ((SELECT id FROM pref_label_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_RESET_BUTTON'),'Reajustar','es',true,1);

-- Texts
INSERT INTO texts (default_text) VALUES ('Invite Successful');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Invite Successful');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Invitar Exitosa');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_INVITE_SUCCESSFUL',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_SUCCESSFUL'),'Invite Successfully Sent','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_SUCCESSFUL'),'Invitar a un correo electrónico enviado con éxito','es',true);

INSERT INTO texts (default_text) VALUES ('Invite Failed');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Invite Failed');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Invitación Falló');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_INVITE_FAILED',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_FAILED'),'Invite Failed','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITE_FAILED'),'Invitar Error','es',true);


-- Text
INSERT INTO texts (default_text) VALUES ('Main Tab Aquaintances');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab Aquaintances');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Principales Tab aquaintances');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_MAIN_TAB_AQUAINTANCES',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_MAIN_TAB_AQUAINTANCES'),'Aquaintances','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_MAIN_TAB_AQUAINTANCES'),'Aquaintances','es',true);

INSERT INTO texts (default_text) VALUES ('Aquaintances Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Aquaintances Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Aquaintances Cabecera');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_AQUAINTANCES_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_AQUAINTANCES_HEADER'),'My Aquaintances','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_AQUAINTANCES_HEADER'),'Mis aquaintances','es',true);

INSERT INTO texts (default_text) VALUES ('Main Tab Invites');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Main Tab Invites');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Invita ficha Principal');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_MAIN_TAB_INVITES',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_MAIN_TAB_INVITES'),'Invites','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_MAIN_TAB_INVITES'),'Invita','es',true);

INSERT INTO texts (default_text) VALUES ('Invites Header');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Invites Header');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Invita Cabecera');
INSERT INTO pref_text_name (pref_name_id,name,text_id) VALUES((SELECT id FROM pref_name WHERE name = 'SOCIAL_ACQUAINTANCE_PAGE'),'SOCIAL_ACQUAINTANCE_INVITES_HEADER',@lastid);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITES_HEADER'),'My Invites','en',true);
INSERT INTO pref_text_value (pref_text_name_id,text_value,lang,rendered) VALUES ((SELECT id FROM pref_text_name WHERE name = 'SOCIAL_ACQUAINTANCE_INVITES_HEADER'),'Invita Mi','es',true);
