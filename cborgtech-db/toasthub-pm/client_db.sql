
CREATE TABLE `pm_team`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`owner_id` bigint(20) NOT NULL,
	`name` varchar(200) NOT NULL,
	`type` varchar(200),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_team_name` (`name`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_role`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`team_id` bigint(20),
	`name` varchar(200) NOT NULL,
	`code` varchar(100) NOT NULL,
	`start_date` datetime DEFAULT '1970-01-01 00:00:01',
	`end_date` datetime DEFAULT '2999-01-01 23:59:59',
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_team_code` (`team_id`,`code`),
	UNIQUE KEY `uk_team_name` (`team_id`,`name`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_permission`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`code` varchar(100) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_code` (`code`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_role_permission`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`role_id` bigint(20) NOT NULL,
	`permission_id` bigint(20) NOT NULL,
	`rights` varchar(2) DEFAULT 'R',
	`start_date` datetime DEFAULT '1970-01-01 00:00:01',
	`end_date` datetime DEFAULT '2999-01-01 23:59:59',
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_role_permission` (`role_id`,`permission_id`),
	FOREIGN KEY (`role_id`) REFERENCES `pm_role` (`id`),
	FOREIGN KEY (`permission_id`) REFERENCES `pm_permission` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_member`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`team_id` bigint(20) NOT NULL,
	`user_id` bigint(20) NOT NULL,
	`name` varchar(200) NOT NULL,
	`username` varchar(200) NOT NULL,
	`type` varchar(100) NOT NULL,
	`start_date` datetime DEFAULT '1970-01-01 00:00:01',
	`end_date` datetime DEFAULT '2999-01-01 23:59:59',
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_team_member` (`team_id`,`user_id`,`type`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_member_role`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`member_id` bigint(20) NOT NULL,
	`role_id` bigint(20) NOT NULL,
	`sort_order` INT DEFAULT 1,
	`start_date` datetime DEFAULT '1970-01-01 00:00:01',
	`end_date` datetime DEFAULT '2999-01-01 23:59:59',
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`member_id`) REFERENCES `pm_member` (`id`),
	FOREIGN KEY (`role_id`) REFERENCES `pm_role` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_team_member_role`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`team_id` bigint(20) NOT NULL,
	`member_id` bigint(20) NOT NULL,
	`role_id` bigint(20) NOT NULL,
	`sort_order` INT DEFAULT 1,
	`start_date` datetime DEFAULT '1970-01-01 00:00:01',
	`end_date` datetime DEFAULT '2999-01-01 23:59:59',
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`),
	FOREIGN KEY (`member_id`) REFERENCES `pm_member` (`id`),
	FOREIGN KEY (`role_id`) REFERENCES `pm_role` (`id`),
	UNIQUE KEY `uk_team_member_role` (`team_id`,`member_id`,`role_id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_workflow`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`description` text,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name` (`name`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_workflow_step`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`workflow_id` bigint(20) DEFAULT NULL,
	`next_step` varchar(5000),
	`sort_order` INT NOT NULL DEFAULT 1,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name_wf` (`name`,`workflow_id`),
	FOREIGN KEY (`workflow_id`) REFERENCES `pm_workflow` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_product`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`description` text,
	`user_id` bigint(20) DEFAULT NULL,
	`workflow_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name_app` (`name`),
	FOREIGN KEY (`workflow_id`) REFERENCES `pm_workflow` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_product_team`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`product_id` bigint(20) NOT NULL,
	`team_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_product_team` (`product_id`,`team_id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_project`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`description` text,
	`start_date` datetime NOT NULL,
	`end_date` datetime NOT NULL,
	`workflow_id` bigint(20) DEFAULT NULL,
	`product_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name_prod` (`name`,`product_id`),
	FOREIGN KEY (`workflow_id`) REFERENCES `pm_workflow` (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_project_team`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`project_id` bigint(20) NOT NULL,
	`team_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_project_team` (`project_id`,`team_id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	

CREATE TABLE `pm_backlog`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`description` text,
	`workflow_id` bigint(20) DEFAULT NULL,
	`product_id` bigint(20) DEFAULT NULL,
	`project_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name_prod` (`name`,`product_id`),
	UNIQUE KEY `uk_name_proj` (`name`,`project_id`),
	FOREIGN KEY (`workflow_id`) REFERENCES `pm_workflow` (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_backlog_team`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`backlog_id` bigint(20) NOT NULL,
	`team_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_backlog_team` (`backlog_id`,`team_id`),
	FOREIGN KEY (`backlog_id`) REFERENCES `pm_backlog` (`id`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_release`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`description` text,
	`start_date` datetime NOT NULL,
	`end_date` datetime NOT NULL,
	`workflow_id` bigint(20) DEFAULT NULL,
	`product_id` bigint(20) DEFAULT NULL,
	`project_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name_prod` (`name`,`product_id`),
	UNIQUE KEY `uk_name_proj` (`name`,`project_id`),
	FOREIGN KEY (`workflow_id`) REFERENCES `pm_workflow` (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_release_team`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`release_id` bigint(20) NOT NULL,
	`team_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_release_team` (`release_id`,`team_id`),
	FOREIGN KEY (`release_id`) REFERENCES `pm_release` (`id`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_sprint`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`description` text,
	`start_date` datetime NOT NULL,
	`end_date` datetime NOT NULL,
	`product_id` bigint(20) DEFAULT NULL,
	`project_id` bigint(20) DEFAULT NULL,
	`release_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name_prod` (`name`,`product_id`),
	UNIQUE KEY `uk_name_proj` (`name`,`project_id`),
	UNIQUE KEY `uk_name_rel` (`name`,`release_id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`),
	FOREIGN KEY (`release_id`) REFERENCES `pm_release` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_defect`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`summary` varchar(200) NOT NULL,
	`description` text,
	`steps_to_recreate` text,
	`environment` varchar(200),
	`work_around` text,
	`env_users` varchar(200),
	`reported_by_id` bigint(20),
	`assignee_id` bigint(20),
	`severity` varchar(100),
	`priority` int DEFAULT 0,
	`item_version` varchar(100),
	`external_ref` varchar(100),
	`internal_ref` varchar(100),
	`develop_estimate` double(8,2),
	`test_estimate` double(8,2),
	`develop_actual` double(8,2),
	`test_actual` double(8,2),
	`workflowstep_id` bigint(20) DEFAULT NULL,
	`product_id` bigint(20) DEFAULT NULL,
	`project_id` bigint(20) DEFAULT NULL,
	`release_id` bigint(20) DEFAULT NULL,
	`backlog_id` bigint(20) DEFAULT NULL,
	`sprint_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`workflowstep_id`) REFERENCES `pm_workflow_step` (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`),
	FOREIGN KEY (`release_id`) REFERENCES `pm_release` (`id`),
	FOREIGN KEY (`backlog_id`) REFERENCES `pm_backlog` (`id`),
	FOREIGN KEY (`sprint_id`) REFERENCES `pm_sprint` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;	

CREATE TABLE `pm_enhancement`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`summary` varchar(200) NOT NULL,
	`description` text,
	`reported_by_id` bigint(20),
	`assignee_id` bigint(20),
	`severity` varchar(100),
	`priority` int DEFAULT 0,
	`item_version` varchar(100),
	`external_ref` varchar(100),
	`internal_ref` varchar(100),
	`develop_estimate` double(8,2),
	`test_estimate` double(8,2),
	`develop_duration` double(8,2),
	`test_duration` double(8,2),
	`workflowstep_id` bigint(20) DEFAULT NULL,
	`product_id` bigint(20) DEFAULT NULL,
	`project_id` bigint(20) DEFAULT NULL,
	`release_id` bigint(20) DEFAULT NULL,
	`backlog_id` bigint(20) DEFAULT NULL,
	`sprint_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`workflowstep_id`) REFERENCES `pm_workflow_step` (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`),
	FOREIGN KEY (`release_id`) REFERENCES `pm_release` (`id`),
	FOREIGN KEY (`backlog_id`) REFERENCES `pm_backlog` (`id`),
	FOREIGN KEY (`sprint_id`) REFERENCES `pm_sprint` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_comment`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`description` text NOT NULL,
	`owner_id` bigint(20),
	`parent_id` bigint(20),
	`defect_id` bigint(20),
	`enhancement_id` bigint(20),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`parent_id`) REFERENCES `pm_comment` (`id`),
	FOREIGN KEY (`defect_id`) REFERENCES `pm_defect` (`id`),
	FOREIGN KEY (`enhancement_id`) REFERENCES `pm_enhancement` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_scrum`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`description` text,
	`product_id` bigint(20) DEFAULT NULL,
	`project_id` bigint(20) DEFAULT NULL,
	`backlog_id` bigint(20) DEFAULT NULL,
	`release_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_scrum_prod_proj` (`name`,`product_id`,`project_id`,`backlog_id`,`release_id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`),
	FOREIGN KEY (`backlog_id`) REFERENCES `pm_backlog` (`id`),
	FOREIGN KEY (`release_id`) REFERENCES `pm_release` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_scrum_request`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`name` varchar(200) NOT NULL,
	`subject` varchar(200) NOT NULL,
	`description` varchar(200),
	`request_days_times` varchar(2000),
	`email_to` varchar(2000),
	`scrum_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_name_scrum` (`name`,`scrum_id`),
	FOREIGN KEY (`scrum_id`) REFERENCES `pm_scrum` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_scrum_response`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`description` text NOT NULL,
	`scrum_request_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`scrum_request_id`) REFERENCES `pm_scrum_request` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_task`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`summary` varchar(200) NOT NULL,
	`description` text,
	`reported_by_id` bigint(20),
	`assignee_id` bigint(20),
	`severity` varchar(100),
	`priority` int DEFAULT 0,
	`item_version` varchar(100),
	`external_ref` varchar(100),
	`internal_ref` varchar(100),
	`work_estimate` double(8,2),
	`test_estimate` double(8,2),
	`work_actual` double(8,2),
	`test_actual` double(8,2),
	`start_date` datetime,
	`complete_date` datetime,
	`workflowstep_id` bigint(20) DEFAULT NULL,
	`product_id` bigint(20) DEFAULT NULL,
	`project_id` bigint(20) DEFAULT NULL,
	`release_id` bigint(20) DEFAULT NULL,
	`backlog_id` bigint(20) DEFAULT NULL,
	`sprint_id` bigint(20) DEFAULT NULL,
	`parent_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`workflowstep_id`) REFERENCES `pm_workflow_step` (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `pm_product` (`id`),
	FOREIGN KEY (`project_id`) REFERENCES `pm_project` (`id`),
	FOREIGN KEY (`release_id`) REFERENCES `pm_release` (`id`),
	FOREIGN KEY (`backlog_id`) REFERENCES `pm_backlog` (`id`),
	FOREIGN KEY (`sprint_id`) REFERENCES `pm_sprint` (`id`),
	FOREIGN KEY (`parent_id`) REFERENCES `pm_task` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_test_scenario`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`summary` varchar(200) NOT NULL,
	`description` text,
	`type` varchar(100) NOT NULL,
	`environment` text,
	`user_info` varchar(2000),
	`setup_info` text,
	`defect_id` bigint(20) DEFAULT NULL,
	`enhancement_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_scenario_def_enh` (`summary`,`defect_id`,`enhancement_id`),
	FOREIGN KEY (`defect_id`) REFERENCES `pm_defect` (`id`),
	FOREIGN KEY (`enhancement_id`) REFERENCES `pm_enhancement` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_test_case`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`summary` varchar(200) NOT NULL,
	`description` text,
	`environment` text,
	`user_info` varchar(2000),
	`setup_info` text,
	`test_scenario_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`test_scenario_id`) REFERENCES `pm_test_scenario` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_watcher`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_id` bigint(20) NOT NULL,
	`defect_id` bigint(20) DEFAULT NULL,
	`enhancement_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`defect_id`) REFERENCES `pm_defect` (`id`),
	FOREIGN KEY (`enhancement_id`) REFERENCES `pm_enhancement` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_deploy`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_id` bigint(20) NOT NULL,
	`name` varchar(200) NOT NULL,
	`last_success` datetime,
	`last_fail` datetime,
	`last_duration` double(8,0),
	`run_status` varchar(200),
	`cron_schedule` varchar(200),
	`workspace` varchar(1000),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `pm_deploy_team`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`deploy_id` bigint(20) NOT NULL,
	`team_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_deploy_team` (`deploy_id`,`team_id`),
	FOREIGN KEY (`deploy_id`) REFERENCES `pm_deploy` (`id`),
	FOREIGN KEY (`team_id`) REFERENCES `pm_team` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_deploy_pipeline`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`deploy_id` bigint(20) DEFAULT NULL,
	`name` varchar(200) NOT NULL,
	`sort_order` INT NOT NULL DEFAULT 1,
	`scm_url` varchar(500),
	`scm_user` varchar(500),
	`scm_password` varchar(500),
	`branch` varchar(500),
	`compiler` varchar(200) NOT NULL,
	`commandline_script` varchar(500),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_deploy_sort_order` (`deploy_id`,`sort_order`),
	FOREIGN KEY (`deploy_id`) REFERENCES `pm_deploy` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;	
	
CREATE TABLE `pm_deploy_system`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`deploy_id` bigint(20) DEFAULT NULL,
	`server_name` varchar(500),
	`ssh_username` varchar(200),
	`ssh_password` varchar(500),
	`ssh_token` varchar(200),
	`staging_dir` varchar(1000),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`deploy_id`) REFERENCES `pm_deploy` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `pm_deploy_build`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`deploy_id` bigint(20) DEFAULT NULL,
	`start_date` datetime,
	`end_date` datetime,
	`build_status` varchar(100) NOT NULL,
	`workspace` varchar(500),
	`staging_dir` varchar(500),
	`console_output_file` varchar(500) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`deploy_id`) REFERENCES `pm_deploy` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
