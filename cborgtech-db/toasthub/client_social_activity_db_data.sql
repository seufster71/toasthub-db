
-- Social Activities
INSERT INTO texts (default_text) VALUES ('Social Activities Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Social Activities Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Actividades sociales Área');
INSERT INTO pref_name (product_version_id,name,text_id,category) VALUES ((SELECT id FROM pref_product WHERE product = 'GLOBAL'),'SOCIAL_ACTIVITIES_PAGE',@lastid,'MEMBER');
