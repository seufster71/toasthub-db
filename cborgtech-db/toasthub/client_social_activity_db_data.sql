
-- Social Activities
INSERT INTO texts (default_text) VALUES ('Social Activities Area');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Social Activities Area');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Actividades sociales Área');
INSERT INTO page_name (name,text_id,category) VALUES ('SOCIAL_ACTIVITIES',@lastid,'MEMBER');
