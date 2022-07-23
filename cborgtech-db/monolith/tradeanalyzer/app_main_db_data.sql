
INSERT INTO texts (default_text) VALUES ('Rapid Cborgtech Dev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rapid Cborgtech Dev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rapid Cborgtech Dev');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout) VALUES (@lastid,'rapid.cborgtech.home','APP_RAPID','CBORGTECH','rapid','cborgapp','publicLayout','adminLayout','memberLayout',null);


INSERT INTO texts (default_text) VALUES ('Localhost test');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Localhost test');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Localhost test');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout) VALUES (@lastid,'localhost','APP_RAPID','CBORGTECH','cborgapp','cborgapp','publicLayout','adminLayout','memberLayout',null);


INSERT INTO texts (default_text) VALUES ('Local IP test');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Local IP test');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Local IP test');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout) VALUES (@lastid,'10.0.1.9','APP_RAPID','CBORGTECH','cborgapp','cborgapp','publicLayout','adminLayout','memberLayout',null);