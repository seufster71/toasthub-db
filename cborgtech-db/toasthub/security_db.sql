
CREATE TABLE IF NOT EXISTS `texts`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`default_text` text,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE IF NOT EXISTS `langtexts`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`text_id` bigint(20) NOT NULL,
	`lang` varchar(5) NOT NULL,
	`text` text,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_text_lang` (`text_id`,`lang`),
	FOREIGN KEY (`text_id`) REFERENCES `texts` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `users`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`username` varchar(128) NOT NULL,
	`password` varchar(512),
	`salt` varchar(32),
	`firstname` varchar(128) NOT NULL,
	`middlename` varchar(128),
	`lastname` varchar(128) NOT NULL,
	`zipcode` varchar(50),
	`email` varchar(128) NOT NULL,
	`challengephase1` varchar(255),
	`challengephaseanswer1` varchar(255),
	`challengephase2` varchar(255),
	`challengephaseanswer2` varchar(255),
	`challengephase3` varchar(255),
	`challengephaseanswer3` varchar(255),
	`alternateEmail` varchar(128),
	`session_token` varchar(32),
	`email_token` varchar(32),
	`email_confirm` bit(1) DEFAULT 0,
	`force_reset` bit(1) DEFAULT 0,
	`lang` varchar(10) NOT NULL,
	`log_level` varchar(10) DEFAULT 'OFF',
	`use_token` bit(1) DEFAULT 0,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`last_pass_change` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_userpass` (`username`),
	UNIQUE KEY `uk_useremail` (`email`),
	FOREIGN KEY (`lockowner_id`) REFERENCES `users` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `application`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`code` varchar(100) NOT NULL,
	`title_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_code` (`code`),
	FOREIGN KEY (`title_id`) REFERENCES `texts` (`id`),
	FOREIGN KEY (`lockowner_id`) REFERENCES `users` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `role`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`code` varchar(100) NOT NULL,
	`title_id` bigint(20) NOT NULL,
	`application_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`eff_start` datetime DEFAULT '1970-01-01 00:00:01',
	`eff_end` datetime DEFAULT '2999-01-01 23:59:59',
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_role_application` (`code`, `application_id`),
	FOREIGN KEY (`title_id`) REFERENCES `texts` (`id`),
	FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
	FOREIGN KEY (`lockowner_id`) REFERENCES `users` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `permission`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`code` varchar(100) NOT NULL,
	`title_id` bigint(20) NOT NULL,
	`rights` varchar(2) DEFAULT 'D',
	`application_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`eff_start` datetime DEFAULT '1970-01-01 00:00:01',
	`eff_end` datetime DEFAULT '2999-01-01 23:59:59',
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_permission_application` (`code`, `application_id`),
	FOREIGN KEY (`title_id`) REFERENCES `texts` (`id`),
	FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
	FOREIGN KEY (`lockowner_id`) REFERENCES `users` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `user_role`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_id` bigint(20) NOT NULL,
	`role_id` bigint(20) NOT NULL,
	`sort_order` INT NOT NULL DEFAULT 1,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_user_role` (`user_id`,`role_id`),
	FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
	FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `role_permission`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`role_id` bigint(20) NOT NULL,
	`permission_id` bigint(20) NOT NULL,
	`rights` varchar(2) DEFAULT 'D',
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`eff_start` datetime DEFAULT '1970-01-01 00:00:01',
	`eff_end` datetime DEFAULT '2999-01-01 23:59:59',
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_role_permission` (`role_id`,`permission_id`),
	FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
	FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
	FOREIGN KEY (`lockowner_id`) REFERENCES `users` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `login_log`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_name` varchar(128) NOT NULL,
	`ip_address` varchar(128) DEFAULT NULL,
	`app_name` varchar(64) NOT NULL,
	`status` varchar(64) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	