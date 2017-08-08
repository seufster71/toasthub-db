
-- languages
INSERT INTO texts (default_text) VALUES ('English');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','English');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Inglés');
INSERT INTO language (code,text_id,def_lang,created) VALUES ('en',@lastid,true,null);

INSERT INTO texts (default_text) VALUES ('Spanish');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Spanish');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Español');
INSERT INTO language (code,text_id,def_lang,created) VALUES ('es',@lastid,false,null);

INSERT INTO texts (default_text) VALUES ('French');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','French');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Francés');
INSERT INTO language (code,text_id,def_lang,is_active,created) VALUES ('fr',@lastid,false,false,null);
