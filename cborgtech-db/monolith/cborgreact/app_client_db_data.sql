
INSERT INTO pm_workflow (name,description) VALUES ('Main','Main workflow');
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


