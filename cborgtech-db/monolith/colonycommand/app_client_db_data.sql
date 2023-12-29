
INSERT INTO pm_workflow (name,description,user_id) VALUES ('Main','Main workflow',(SELECT id FROM cborgapp_main.users WHERE username='toasthubadmin'));
SET @lastid = LAST_INSERT_ID();
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (1,'New',@lastid,'[{\"value\":3},{\"value\":4}]',1);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (2,'Require Review',@lastid,NULL,2);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (3,'Ready to Work',@lastid,NULL,3);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (4,'In Progress',@lastid,'[{\"value\":2},{\"value\":5},{\"value\":8}]',4);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (5,'Deploy to QA',@lastid,NULL,5);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (6,'QA Testing',@lastid,'[{\"value\":2},{\"value\":3}]',6);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (7,'UAT Testing',@lastid,'[{\"value\":2},{\"value\":3}]',7);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (8,'Deploy to UAT',@lastid,NULL,8);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (9,'Deploy to Prod',@lastid,NULL,9);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (10,'Prod Verify',@lastid,'[{\"value\":2}]',10);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (11,'Complete',@lastid,'[{\"value\":2}]',11);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (12,'Closed',@lastid,NULL,12);

INSERT INTO pm_workflow (name,description,user_id) VALUES ('Main','Main workflow',(SELECT id FROM cborgapp_main.users WHERE username='toasthubmember'));
SET @lastid = LAST_INSERT_ID();
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (13,'New',@lastid,'[{\"value\":15},{\"value\":16}]',1);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (14,'Require Review',@lastid,NULL,2);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (15,'Ready to Work',@lastid,NULL,3);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (16,'In Progress',@lastid,'[{\"value\":14},{\"value\":17},{\"value\":20}]',4);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (17,'Deploy to QA',@lastid,NULL,5);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (18,'QA Testing',@lastid,'[{\"value\":14},{\"value\":15}]',6);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (19,'UAT Testing',@lastid,'[{\"value\":14},{\"value\":15}]',7);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (20,'Deploy to UAT',@lastid,NULL,8);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (21,'Deploy to Prod',@lastid,NULL,9);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (22,'Prod Verify',@lastid,'[{\"value\":14}]',10);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (23,'Complete',@lastid,'[{\"value\":14}]',11);
INSERT INTO pm_workflow_step (id,name,workflow_id,next_step,sort_order) VALUES (124,'Closed',@lastid,NULL,12);