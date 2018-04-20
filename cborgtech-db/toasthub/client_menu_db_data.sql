
INSERT INTO texts (default_text) VALUES ('Default Public Menu Right');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Public Menu Right');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú predeterminado a la derecha');
INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('PUBLIC_MENU_RIGHT','PUBLIC',@lastid,'1.0','1.0');

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'PUBLIC_MENU_RIGHT'),'PRM_PUBLIC_MENU_RIGHT_HOME','HOME',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'PUBLIC_MENU_RIGHT'),'Home','/','home_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'PUBLIC_MENU_RIGHT'),'Casa','/','home_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'PUBLIC_MENU_RIGHT'),'PRM_PUBLIC_MENU_RIGHT_SERVICES','SERVICES',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SERVICES' and menus.code = 'PUBLIC_MENU_RIGHT'),'Services','/services','service_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SERVICES' and menus.code = 'PUBLIC_MENU_RIGHT'),'Servicios','/services','service_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'PUBLIC_MENU_RIGHT'),'PRM_PUBLIC_MENU_RIGHT_ABOUT','ABOUT',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ABOUT' and menus.code = 'PUBLIC_MENU_RIGHT'),'About','/about','about_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ABOUT' and menus.code = 'PUBLIC_MENU_RIGHT'),'Acerca de','/about','about_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'PUBLIC_MENU_RIGHT'),'PRM_PUBLIC_MENU_RIGHT_LOGIN','LOGIN',3);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGIN' and menus.code = 'PUBLIC_MENU_RIGHT'),'Login','/login','login_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGIN' and menus.code = 'PUBLIC_MENU_RIGHT'),'Iniciar sesión','/login','login_blue','es',true);

-- Private menu
INSERT INTO texts (default_text) VALUES ('Default Member Menu Left');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default Member Menu Left');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú miembro de Izquierda');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('MEMBER_MENU_LEFT','MEMBER',@lastid,'1.0','1.0');
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_HOME','HOME',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'MEMBER_MENU_LEFT'),'Home','/member/social/index.html','en',true);

-- Social
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_SOCIAL','SOCIAL',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'Social','','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'Medios de Comunicación Social','','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_ACQUAINTANCE','ACQUAINTANCE',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ACQUAINTANCE' and menus.code = 'MEMBER_MENU_LEFT'),'Acquaintances','/member/social/index.html?page=acquaintance','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ACQUAINTANCE' and menus.code = 'MEMBER_MENU_LEFT'),'Conocidos','/member/social/index.html?page=acquaintance&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_GROUPS','GROUPS',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'GROUPS' and menus.code = 'MEMBER_MENU_LEFT'),'Groups','/member/social/index.html?page=groups','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'GROUPS' and menus.code = 'MEMBER_MENU_LEFT'),'Grupos','/member/social/index.html?page=groups&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_ACTIVITIES','ACTIVITIES',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ACTIVITIES' and menus.code = 'MEMBER_MENU_LEFT'),'Activities','/member/social/index.html?page=activities','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ACTIVITIES' and menus.code = 'MEMBER_MENU_LEFT'),'Actividades','/member/social/index.html?page=activities&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_EVENTS','EVENTS',3);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'EVENTS' and menus.code = 'MEMBER_MENU_LEFT'),'Events','/member/social/index.html?page=events','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'EVENTS' and menus.code = 'MEMBER_MENU_LEFT'),'Eventos','/member/social/index.html?page=events&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_MESSAGES','MESSAGES',4);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MESSAGES' and menus.code = 'MEMBER_MENU_LEFT'),'Messages','/member/social/index.html?page=messages','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MESSAGES' and menus.code = 'MEMBER_MENU_LEFT'),'Mensajes','/member/social/index.html?page=messages&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SOCIAL' and menus.code = 'MEMBER_MENU_LEFT'),'PRM_MEMBER_MENU_LEFT_LIBRARY','LIBRARY',5);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LIBRARY' and menus.code = 'MEMBER_MENU_LEFT'),'Library','/member/social/index.html?page=library','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LIBRARY' and menus.code = 'MEMBER_MENU_LEFT'),'Biblioteca','/member/social/index.html?page=library&lang=es','es',true);

INSERT INTO texts (default_text) VALUES ('Member Menu Top');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Member Menu Top');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú de miembros Arriba');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('MEMBER_MENU_TOP','MEMBER',@lastid,'1.0','1.0');

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MD','HOME',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'MEMBER_MENU_TOP'),'Home','/member','home_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'MEMBER_MENU_TOP'),'Casa','/member','home_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MA','ACQUAINTANCE',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ACQUAINTANCE' and menus.code = 'MEMBER_MENU_TOP'),'Acquaintances','/member-acquaintances','acquaintance_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ACQUAINTANCE' and menus.code = 'MEMBER_MENU_TOP'),'Conocidos','/member-acquaintances','acquaintance_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MG','GROUPS',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'GROUPS' and menus.code = 'MEMBER_MENU_TOP'),'Groups','/member-groups','groups_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'GROUPS' and menus.code = 'MEMBER_MENU_TOP'),'Grupos','/member-groups','groups_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MS','SHOP',3);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SHOP' and menus.code = 'MEMBER_MENU_TOP'),'Shop','/member-shopping','shopping-cart_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SHOP' and menus.code = 'MEMBER_MENU_TOP'),'Tienda','/member-shopping','shopping-cart_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MN','NOTES',4);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'NOTES' and menus.code = 'MEMBER_MENU_TOP'),'Notes','/member-notes','notes_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'NOTES' and menus.code = 'MEMBER_MENU_TOP'),'Notas','/member-notes','notes_blue','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),'MSM','SUBMENU',5);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'Submenu','/member-submenu','hamburger_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'Submenu','/member-submenu','hamburger_blue','es',true);
-- submenu
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'ADMAREA','ADMIN',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ADMIN' and menus.code = 'MEMBER_MENU_TOP'),'Admin','/admin','admin_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ADMIN' and menus.code = 'MEMBER_MENU_TOP'),'Administración','/admin','admin_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'MP','PROFILE',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PROFILE' and menus.code = 'MEMBER_MENU_TOP'),'Profile','/member-profile','profile_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PROFILE' and menus.code = 'MEMBER_MENU_TOP'),'Perfil','/member-profile','profile_blue','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'MEMBER_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'MEMBER_MENU_TOP'),'ML','LOGOUT',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGOUT' and menus.code = 'MEMBER_MENU_TOP'),'Log out','/member-logout','logout_blue','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGOUT' and menus.code = 'MEMBER_MENU_TOP'),'Cerrar sesión','/member-logout','logout_blue','es',true);



-- Admin menu Top
INSERT INTO texts (default_text) VALUES ('Admin Menu Top');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Menu Top');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú Admin Top');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('ADMIN_MENU_TOP','ADMIN',@lastid,'1.0','1.0');

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),'AD','HOME',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'ADMIN_MENU_TOP'),'Home','/admin','home_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'HOME' and menus.code = 'ADMIN_MENU_TOP'),'Página de inicio','/admin','home_green','es',true);

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),'AB','BUGS',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'BUGS' and menus.code = 'ADMIN_MENU_TOP'),'Bugs','/admin-bugs','bugs_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'BUGS' and menus.code = 'ADMIN_MENU_TOP'),'Errores informáticos','/admin-bugs','bugs_green','es',true);

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),'ACR','CHANGEREQUESTS',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CHANGEREQUESTS' and menus.code = 'ADMIN_MENU_TOP'),'Change Requests','/admin-changerequests','cr_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CHANGEREQUESTS' and menus.code = 'ADMIN_MENU_TOP'),'Solicitudes de cambio','/admin-changerequests','cr_green','es',true);

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),'AUM','USERMGMT',3);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'USERMGMT' and menus.code = 'ADMIN_MENU_TOP'),'User Management','/admin-usermgmt','usermgmt_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'USERMGMT' and menus.code = 'ADMIN_MENU_TOP'),'Gestión de usuarios','/admin-usermgmt','usermgmt_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'USERMGMT' and menus.code = 'ADMIN_MENU_TOP'),'AU','USERS',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'USERS' and menus.code = 'ADMIN_MENU_TOP'),'Users','/admin-users','users_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'USERS' and menus.code = 'ADMIN_MENU_TOP'),'Usuarios','/admin-users','users_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'USERMGMT' and menus.code = 'ADMIN_MENU_TOP'),'AR','ROLES',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ROLES' and menus.code = 'ADMIN_MENU_TOP'),'Roles','/admin-roles','users_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'ROLES' and menus.code = 'ADMIN_MENU_TOP'),'Roles','/admin-roles','users_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'USERMGMT' and menus.code = 'ADMIN_MENU_TOP'),'AP','PERMISSIONS',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PERMISSIONS' and menus.code = 'ADMIN_MENU_TOP'),'Permissions','/admin-permissions','key_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PERMISSIONS' and menus.code = 'ADMIN_MENU_TOP'),'Permisos','/admin-permissions','key_green','es',true);

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),'APR','PREFERENCES',4);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREFERENCES' and menus.code = 'ADMIN_MENU_TOP'),'Preferences','/admin-prefmgmt','gears_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREFERENCES' and menus.code = 'ADMIN_MENU_TOP'),'Preferencias','/admin-prefmgmt','gears_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'PREFERENCES' and menus.code = 'ADMIN_MENU_TOP'),'APRP','PREF_PUBLIC',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREF_PUBLIC' and menus.code = 'ADMIN_MENU_TOP'),'Public','/admin-prefpublic','gears_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREF_PUBLIC' and menus.code = 'ADMIN_MENU_TOP'),'Público','/admin-prefpublic','gears_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'PREFERENCES' and menus.code = 'ADMIN_MENU_TOP'),'APRM','PREF_MEMBER',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREF_MEMBER' and menus.code = 'ADMIN_MENU_TOP'),'Member','/admin-prefmember','gears_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREF_MEMBER' and menus.code = 'ADMIN_MENU_TOP'),'Miembro','/admin-prefmember','gears_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'PREFERENCES' and menus.code = 'ADMIN_MENU_TOP'),'APRA','PREF_ADMIN',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREF_ADMIN' and menus.code = 'ADMIN_MENU_TOP'),'Admin','/admin-prefadmin','gears_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREF_ADMIN' and menus.code = 'ADMIN_MENU_TOP'),'Admin','/admin-prefadmin','gears_green','es',true);

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),'ASM','SUBMENU',5);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'Other','/admin-other','hamburger_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'Other','/admin-other','hamburger_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'AL','LANGUAGE',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LANGUAGE' and menus.code = 'ADMIN_MENU_TOP'),'Language','/admin-language','hamburger_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LANGUAGE' and menus.code = 'ADMIN_MENU_TOP'),'Idioma','/admin-language','hamburger_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'AC','CATEGORY',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CATEGORY' and menus.code = 'ADMIN_MENU_TOP'),'Category','/admin-category','hamburger_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CATEGORY' and menus.code = 'ADMIN_MENU_TOP'),'Categoría','/admin-category','hamburger_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'AS','STATUS',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'STATUS' and menus.code = 'ADMIN_MENU_TOP'),'Status','/admin-status','hamburger_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'STATUS' and menus.code = 'ADMIN_MENU_TOP'),'Estado','/admin-status','hamburger_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'ASVR','SERVICE',3);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SERVICE' and menus.code = 'ADMIN_MENU_TOP'),'Service','/admin-service','hamburger_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SERVICE' and menus.code = 'ADMIN_MENU_TOP'),'Servicio','/admin-service','hamburger_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'AM','MENU',4);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU' and menus.code = 'ADMIN_MENU_TOP'),'Menu','/admin-menu','hamburger_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU' and menus.code = 'ADMIN_MENU_TOP'),'Menu','/admin-menu','hamburger_green','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_TOP'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SUBMENU' and menus.code = 'ADMIN_MENU_TOP'),'ASYS','SYSTEM',5);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYSTEM' and menus.code = 'ADMIN_MENU_TOP'),'System','/admin-system','hamburger_green','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,image,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYSTEM' and menus.code = 'ADMIN_MENU_TOP'),'System','/admin-system','hamburger_green','es',true);


-- Admin menu for Menus
INSERT INTO texts (default_text) VALUES ('Admin Menu for Menus');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Menu for Menus');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú Admin for Menus');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('ADMIN_MENU_MENU','ADMIN',@lastid,'1.0','1.0');

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_MENU'),'PRM_ADMIN_MENU_MENU_PUBLIC','MENU_PUBLIC',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU_PUBLIC' and menus.code = 'ADMIN_MENU_MENU'),'Public','menuPublic','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU_PUBLIC' and menus.code = 'ADMIN_MENU_MENU'),'Público','menuPublic','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_MENU'),'PRM_ADMIN_MENU_MENU_MEMBER','MENU_MEMBER',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU_MEMBER' and menus.code = 'ADMIN_MENU_MENU'),'Member','menuMember','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU_MEMBER' and menus.code = 'ADMIN_MENU_MENU'),'Miembro','menuMember','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_MENU'),'PRM_ADMIN_MENU_MENU_ADMIN','MENU_ADMIN',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU_ADMIN' and menus.code = 'ADMIN_MENU_MENU'),'Admin','menuAdmin','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'MENU_ADMIN' and menus.code = 'ADMIN_MENU_MENU'),'Admin','menuAdmin','es',true);

-- Admin menu for System
INSERT INTO texts (default_text) VALUES ('Admin Menu for System');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Admin Menu for System');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menú Admin for System');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('ADMIN_MENU_SYSTEM','ADMIN',@lastid,'1.0','1.0');
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_SYSTEM'),'PRM_ADMIN_MENU_SYSTEM_CLIENT_DOMAIN','CLIENT_DOMAIN',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CLIENT_DOMAIN' and menus.code = 'ADMIN_MENU_SYSTEM'),'Client Domain','clientDomain','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CLIENT_DOMAIN' and menus.code = 'ADMIN_MENU_SYSTEM'),'Dominio del cliente','clientDomain','es',true);
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'ADMIN_MENU_SYSTEM'),'PRM_ADMIN_MENU_SYSTEM_APPLICATION','APPLICATION',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'APPLICATION' and menus.code = 'ADMIN_MENU_SYSTEM'),'Application','application','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'APPLICATION' and menus.code = 'ADMIN_MENU_SYSTEM'),'Solicitud','application','es',true);


-- SysAdmin menu Right
INSERT INTO texts (default_text) VALUES ('Default SysAdmin Menu Right');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default SysAdmin Menu Right');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Derecha SysAdmin Menú miembro');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('SYSADMIN_MENU_RIGHT','SYSADMIN',@lastid,'1.0','1.0');
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_RIGHT'),'PRM_SYSADMIN_MENU_RIGHT_SYSADMIN','SYSADMIN',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYSADMIN' and menus.code = 'SYSADMIN_MENU_RIGHT'),'Admin','','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYSADMIN' and menus.code = 'SYSADMIN_MENU_RIGHT'),'Admin','','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_RIGHT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SYSADMIN' and menus.code = 'SYSADMIN_MENU_RIGHT'),'PRM_SYSADMIN_MENU_RIGHT_PROFILE','PROFILE',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PROFILE' and menus.code = 'SYSADMIN_MENU_RIGHT'),'Profile','/sysadmin/index.html?page=profile','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PROFILE' and menus.code = 'SYSADMIN_MENU_RIGHT'),'Perfil','/sysadmin/index.html?page=profile','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_RIGHT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'SYSADMIN' and menus.code = 'SYSADMIN_MENU_RIGHT'),'PRM_SYSADMIN_MENU_RIGHT_LOGOUT','LOGOUT',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGOUT' and menus.code = 'SYSADMIN_MENU_RIGHT'),'Logout','/sysadmin/logout.html','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'LOGOUT' and menus.code = 'SYSADMIN_MENU_RIGHT'),'Cerrar sesión','/sysadmin/logout.html','es',true);

-- System Admin Left
INSERT INTO texts (default_text) VALUES ('Default SysAdmin Menu Left');
SET @lastid = LAST_INSERT_ID();
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'en','Default SysAdmin Menu Left');
INSERT INTO langtexts (text_id,lang,text) VALUES (@lastid,'es','Menu SysAdmin de Izquierda');

INSERT INTO menus (code,category,title_id,api_version,app_version) VALUES ('SYSADMIN_MENU_LEFT','SYSADMIN',@lastid,'1.0','1.0');
INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_SYSADMIN','SYSADMIN',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYSADMIN' and menus.code = 'SYSADMIN_MENU_LEFT'),'Home','/sysadmin/index.html','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYSADMIN' and menus.code = 'SYSADMIN_MENU_LEFT'),'Home','/sysadmin/index.html?lang=es','es',true);

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_CLIENTMGMT','CLIENTMGMT',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CLIENTMGMT' and menus.code = 'SYSADMIN_MENU_LEFT'),'Client Management','','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'CLIENTMGMT' and menus.code = 'SYSADMIN_MENU_LEFT'),'Client Management','','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'CLIENTMGMT' and menus.code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_SYS_CLIENTS','SYS_CLIENTS',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_CLIENTS' and menus.code = 'SYSADMIN_MENU_LEFT'),'System Clients','/sysadmin/index.html?page=clients','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_CLIENTS' and menus.code = 'SYSADMIN_MENU_LEFT'),'System Clients','/sysadmin/index.html?page=clients&lang=es','es',true);

INSERT INTO menu_items (menu_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_PREFERENCES','PREFERENCES',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREFERENCES' and menus.code = 'SYSADMIN_MENU_LEFT'),'Preferences','','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'PREFERENCES' and menus.code = 'SYSADMIN_MENU_LEFT'),'Preferences','','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'PREFERENCES' and menus.code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_SYS_FORMS','SYS_FORMS',0);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_FORMS' and menus.code = 'SYSADMIN_MENU_LEFT'),'System Forms','/sysadmin/index.html?page=forms','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_FORMS' and menus.code = 'SYSADMIN_MENU_LEFT'),'Formas del sistema','/sysadmin/index.html?page=forms&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'PREFERENCES' and menus.code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_SYS_LABELS','SYS_LABELS',1);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_LABELS' and menus.code = 'SYSADMIN_MENU_LEFT'),'System Labels','/sysadmin/index.html?page=labels','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_LABELS' and menus.code = 'SYSADMIN_MENU_LEFT'),'Las etiquetas del sistema','/sysadmin/index.html?page=labels&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'PREFERENCES' and menus.code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_SYS_TEXT','SYS_TEXT',2);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_TEXT' and menus.code = 'SYSADMIN_MENU_LEFT'),'System Text','/sysadmin/index.html?page=text','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_TEXT' and menus.code = 'SYSADMIN_MENU_LEFT'),'Texto sistema','/sysadmin/index.html?page=text&lang=es','es',true);
INSERT INTO menu_items (menu_id,parent_id,permission_code,code,sort_order) VALUES ((SELECT id FROM menus WHERE code = 'SYSADMIN_MENU_LEFT'),(SELECT item.id FROM menu_items AS item JOIN menus ON item.menu_id = menus.id WHERE item.code = 'PREFERENCES' and menus.code = 'SYSADMIN_MENU_LEFT'),'PRM_SYSADMIN_MENU_LEFT_SYS_OPTIONS','SYS_OPTIONS',3);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_OPTIONS' and menus.code = 'SYSADMIN_MENU_LEFT'),'System Options','/sysadmin/index.html?page=options','en',true);
INSERT INTO menu_item_values (menu_item_id,menu_value,href,lang,rendered) VALUES ((SELECT menu_items.id FROM menu_items JOIN menus on menu_items.menu_id = menus.id WHERE menu_items.code = 'SYS_OPTIONS' and menus.code = 'SYSADMIN_MENU_LEFT'),'Opciones del sistema','/sysadmin/index.html?page=options&lang=es','es',true);

