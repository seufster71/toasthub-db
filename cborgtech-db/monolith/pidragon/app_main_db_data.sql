
INSERT INTO texts (default_text) VALUES ('Pi Dragon');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Pi Dragon');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Pi Dragon');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout) VALUES (@lastid,'pidragonc1.local','PIDRAGON','PIDRAGON','pidragon','pidragon','publicLayout','adminLayout','memberLayout',null);
