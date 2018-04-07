
INSERT INTO texts (default_text) VALUES ('Dev system');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Dev system');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Dev system');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'cborghome.ddns.net','APP_RAPID','INTERNET','cborgapp','cborgapp','publicLayout','adminLayout','memberLayout',null,null);

INSERT INTO texts (default_text) VALUES ('Rapid Internet Dev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rapid Internet Dev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rapid Internet Dev');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'rapid.internet.home','APP_RAPID','INTERNET','rapid','cborgapp','publicLayout','adminLayout','memberLayout',null,null);

INSERT INTO texts (default_text) VALUES ('Bugdog Internet Dev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Bugdog Internet Dev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Bugdog Internet Dev');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'bugdog.internet.home','APP_BUGDOG','INTERNET','bugdog','cborgapp','publicLayout','adminLayout','memberLayout',null,null);

INSERT INTO texts (default_text) VALUES ('Cthreat Internet Dev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Cthreat Internet Dev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cthreat Internet Dev');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'cthreat.internet.home','APP_CTHREAT','INTERNET','cthreat','cborgapp','publicLayout','adminLayout','memberLayout',null,null);

INSERT INTO texts (default_text) VALUES ('Bugdog Cborgtech Dev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Bugdog Cborgtech Dev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Bugdog Cborgtech Dev');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'bugdog.cborgtech.home','APP_BUGDOG','CBORGTECH','bugdog','cborgapp','publicLayout','adminLayout','memberLayout',null,null);

INSERT INTO texts (default_text) VALUES ('Rapid Cborgtech Dev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Rapid Cborgtech Dev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Rapid Cborgtech Dev');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'rapid.cborgtech.home','APP_RAPID','CBORGTECH','rapid','cborgapp','publicLayout','adminLayout','memberLayout',null,null);

INSERT INTO texts (default_text) VALUES ('Cthreat Cborgtech Dev');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Cthreat Cborgtech Dev');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Cthreat Cborgtech Dev');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'cthreat.cborgtech.home','APP_CTHREAT','CBORGTECH','cthreat','cborgapp','publicLayout','adminLayout','memberLayout',null,null);


INSERT INTO texts (default_text) VALUES ('Localhost test');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Localhost test');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Localhost test');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'localhost','APP_RAPID','CBORGTECH','cborgmulti','cborgmulti','publicLayout','adminLayout','memberLayout',null,null);


INSERT INTO texts (default_text) VALUES ('Local IP test');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Local IP test');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Local IP test');
INSERT INTO clientdomains (title_id,url_domain,app_domain,cust_domain,app_name,html_prefix,public_layout,admin_layout,member_layout,sysadmin_layout,created) VALUES (@lastid,'10.0.1.9','APP_RAPID','CBORGTECH','cborgmulti','cborgmulti','publicLayout','adminLayout','memberLayout',null,null);
