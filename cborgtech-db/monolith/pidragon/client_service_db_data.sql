
-- service classes
-- public
INSERT INTO service_class (service_name,api_version,app_version,class_name,category,location,perm_code,perm_right) VALUES ('PUBLIC_SVC','1.0','1.0','PublicSvc','PUBLIC','LOCAL','PUBAREA','R');

-- member
INSERT INTO service_class (service_name,api_version,app_version,class_name,category,location,perm_code,perm_right) VALUES ('MEMBER_SVC','1.0','1.0','MemberSvc','MEMBER','LOCAL','MEMAREA','R');
INSERT INTO service_class (service_name,api_version,app_version,class_name,category,location,perm_code,perm_right) VALUES ('SERVERS_SVC','1.0','1.0','ServersSvc','MEMBER','LOCAL','MS','R');
INSERT INTO service_class (service_name,api_version,app_version,class_name,category,location,perm_code,perm_right) VALUES ('DASHBOARD_SVC','1.0','1.0','DashBoardSvc','MEMBER','LOCAL','MD','R');
INSERT INTO service_class (service_name,api_version,app_version,class_name,category,location,perm_code,perm_right) VALUES ('LOGOUT_SVC','1.0','1.0','LogOutSvc','MEMBER','LOCAL','ML','R');
INSERT INTO service_class (service_name,api_version,app_version,class_name,category,location,perm_code,perm_right) VALUES ('PROFILE_SVC','1.0','1.0','ProfileSvc','MEMBER','LOCAL','MP','R');

-- login
INSERT INTO service_class (service_name,api_version,app_version,class_name,category,location,perm_code,perm_right) VALUES ('LOGIN_SVC','1.0','1.0','UserManagerSvc','LOGIN','LOCAL','LAREA','R');