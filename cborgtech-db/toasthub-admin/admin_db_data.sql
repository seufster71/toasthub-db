
-- Admin users page

INSERT INTO texts (default_text) VALUES ('Admin Users');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Users');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Los usuarios admin');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_USERS',@lastid,'ADMIN');

-- Paging
INSERT INTO texts (default_text) VALUES ('Paging Limit');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Limit');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Límite de paginación');
INSERT INTO pref_option_name (pref_name_id,name,text_id,value_type,default_value,use_default) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_USERS'),'ADMIN_USERS_PAGING_LIMIT',@lastid,'Integer','20',false);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'ADMIN_USERS_PAGING_LIMIT'),'20','en',true);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'ADMIN_USERS_PAGING_LIMIT'),'20','es',true);

-- Admin roles page

INSERT INTO texts (default_text) VALUES ('Admin Roles');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Roles');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Los usuarios admin');
INSERT INTO pref_name (pref_product_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product_code = 'GLOBAL'),'ADMIN_ROLES',@lastid,'ADMIN');

-- Paging
INSERT INTO texts (default_text) VALUES ('Paging Limit');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Paging Limit');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Límite de paginación');
INSERT INTO pref_option_name (pref_name_id,name,text_id,value_type,default_value,use_default) VALUES((SELECT id FROM pref_name WHERE name = 'ADMIN_ROLES'),'ADMIN_ROLES_PAGING_LIMIT',@lastid,'Integer','20',false);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'ADMIN_ROLES_PAGING_LIMIT'),'20','en',true);
INSERT INTO pref_option_value (pref_option_name_id,option_value,lang,rendered) VALUES ((SELECT id FROM pref_option_name WHERE name = 'ADMIN_ROLES_PAGING_LIMIT'),'20','es',true);
