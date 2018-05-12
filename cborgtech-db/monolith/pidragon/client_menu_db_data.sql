
INSERT INTO texts (default_text) VALUES ('Member Menu Top');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Menu Top');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú de miembros Arriba');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('MEMBER_MENU_TOP','MEMBER',@lastid,'1.0','1.0');

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MD','HOME',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'MEMBER_MENU_TOP'),'Home','/member','home_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'MEMBER_MENU_TOP'),'Casa','/member','home_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MS','SERVERS',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SERVERS' and menus.code = 'MEMBER_MENU_TOP'),'Servers','/member-servers','acquaintance_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SERVERS' and menus.code = 'MEMBER_MENU_TOP'),'Servidores','/member-servers','acquaintance_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MSM','SUBMENU',5);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'Submenu','/member-submenu','hamburger_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'Submenu','/member-submenu','hamburger_blue','es',true);
-- submenu
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'MP','PROFILE',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PROFILE' and menus.code = 'MEMBER_MENU_TOP'),'Profile','/member-profile','profile_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PROFILE' and menus.code = 'MEMBER_MENU_TOP'),'Perfil','/member-profile','profile_blue','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'ML','LOGOUT',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGOUT' and menus.code = 'MEMBER_MENU_TOP'),'Log out','/member-logout','logout_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGOUT' and menus.code = 'MEMBER_MENU_TOP'),'Cerrar sesión','/member-logout','logout_blue','es',true);


