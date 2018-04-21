-- Category
INSERT INTO texts (default_text) VALUES ('Featured');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Featured');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Destacados');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','En vedette');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Vorgestellt');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'FEATURED',0,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Top');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Top');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Top');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Top');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Top');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'TOP',1,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Location');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Location');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Ubicación');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Emplacement');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Lage');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'LOCATION',2,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Friends');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Friends');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Amigos');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Amis');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Freunde');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'FRIENDS',3,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Art');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Art');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Arte');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Art');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Kunst');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'ART',4,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Comics');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Comics');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Historietas');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Bandes dessinées');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Comics');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'COMICS',5,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Dance');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Dance');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Danza');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Danse');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','tanzen');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'DANCE',6,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Design');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Design');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Diseño');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Conception');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Entwurf');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'DESIGN',7,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Fashion');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Fashion');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Moda');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Mode');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Mode');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'FASHION',8,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Movies');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Movies');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Hombre moviente');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Films');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Kino');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'MOVIES',9,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Food');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Food');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Comida');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Nourriture');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Lebensmittel');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'FOOD',10,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Games');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Games');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Juegos');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Jeux');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Spiele');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'GAMES',11,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Music');
SET @lastid = LAST_INSERT_ID();
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'MUSIC',12,null,'TEST');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Music');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Música');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Musique');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Musik');

INSERT INTO texts (default_text) VALUES ('Publishing');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Publishing');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Publicación');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','édition');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Verlagswesen');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'PUBLISHING',13,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Theater');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Theater');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Teatro');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Théâtre');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Schauplatz');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'THEATER',14,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Software');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Software');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Software');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Logiciel');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Software');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'SOFTWARE',15,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Housing');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Housing');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Alojamiento');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Logement');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Wohnungsbau');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'HOUSING',16,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Technology');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Technology');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','tecnología');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','technologie');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Technologie');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'TECHNOLOGY',17,null,'TEST');

INSERT INTO texts (default_text) VALUES ('Games');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Games');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Juegos');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Jeux');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Spiele');
SET @parentid := (SELECT c.id FROM category c WHERE c.code = 'SOFTWARE');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'SOFTWARE_GAMES',0,@parentid,'TEST');

INSERT INTO texts (default_text) VALUES ('Applications');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Applications');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Aplicaciones');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'fr','Applications');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'de','Anwendungen');
SET @parentid := (SELECT c.id FROM category c WHERE c.code = 'SOFTWARE');
INSERT INTO category (title_id,code,sort_order,parent_id,category_group) VALUES (@lastid,'SOFTWARE_APPLICATIONS',1,@parentid,'TEST');

