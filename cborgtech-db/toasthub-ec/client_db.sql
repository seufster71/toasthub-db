
CREATE TABLE `ec_role`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
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
	UNIQUE KEY `uk_ec_code` (`code`),
	UNIQUE KEY `uk_ec_name` (`name`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_permission`
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
	UNIQUE KEY `uk_ec_code` (`code`),
	UNIQUE KEY `uk_ec_name` (`name`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_role_permission`
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
	UNIQUE KEY `uk_ec_role_permission` (`role_id`,`permission_id`),
	FOREIGN KEY (`role_id`) REFERENCES `ec_role` (`id`),
	FOREIGN KEY (`permission_id`) REFERENCES `ec_permission` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_member`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_id` bigint(20) NOT NULL,
	`username` varchar(128) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_ec_user_username` (`user_id`,`username`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
		
CREATE TABLE `ec_attachments`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`data` longblob NOT NULL,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_attachment_thumbnail`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`data` mediumblob NOT NULL,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_account`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_ref_id` bigint(20) NOT NULL,
	`balance` decimal(8,2),
	`type` varchar(30),
	`balance_cryto` decimal(16,8),
	`type_crypto` varchar(30),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`user_ref_id`) REFERENCES `ec_user_ref` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_store`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`title` varchar(200) NOT NULL,
	`description` varchar(1000),
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
	
CREATE TABLE `ec_store_operator`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`store_id` bigint(20) NOT NULL,
	`member_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`store_id`) REFERENCES `ec_store` (`id`),
	FOREIGN KEY (`member_id`) REFERENCES `ec_member` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_operator_role`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`operator_id` bigint(20) NOT NULL,
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
	FOREIGN KEY (`operator_id`) REFERENCES `ec_store_operator` (`id`),
	FOREIGN KEY (`role_id`) REFERENCES `pm_role` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_store_item`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`store_id` bigint(20) NOT NULL,
	`title` varchar(200) NOT NULL,
	`description` varchar(1000),
	`price` decimal(8,2),
	`price_type` varchar(10),
	`override_price` decimal(8,2),
	`price_crypto` decimal(16,8),
	`price_crypto_type` varchar(10),
	`override_price_crypto` decimal(16,8),
	`quantity` INT DEFAULT 0,
	`size` varchar(100),
	`color` varchar(100),
	`category` varchar(100),
	`available` bit(1) DEFAULT 1,
	`available_date` datetime DEFAULT '1970-01-01 00:00:01',
	`disable_date` datetime,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`store_id`) REFERENCES `ec_store` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_attachments_meta`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`title` varchar(512) NOT NULL,
	`size` bigint(20),
	`content_type` varchar(50),
	`attachment_id` bigint(20) NOT NULL,
	`thumbnail_id` bigint(20),
	`store_item_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`attachment_id`) REFERENCES `ec_attachments` (`id`),
	FOREIGN KEY (`thumbnail_id`) REFERENCES `ec_attachment_thumbnail` (`id`),
	FOREIGN KEY (`store_item_id`) REFERENCES `ec_store_item` (`id`),
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_cart_item`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`store_item_id` bigint(20) NOT NULL,
	`quantity` INT DEFAULT 0,
	`total_price` decimal(8,2),
	`total_price_crypto` decimal(16,8),
	`user_ref_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`store_item_id`) REFERENCES `ec_store_item` (`id`),
	FOREIGN KEY (`user_ref_id`) REFERENCES `ec_user_ref` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_store_operator`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`store_id` bigint(20) NOT NULL,
	`user_ref_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`store_id`) REFERENCES `ec_store` (`id`),
	FOREIGN KEY (`user_ref_id`) REFERENCES `ec_user_ref` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;