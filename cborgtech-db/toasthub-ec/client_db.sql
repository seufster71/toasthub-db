
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
	`member_id` bigint(20) NOT NULL,
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
	FOREIGN KEY (`member_id`) REFERENCES `ec_member` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_market`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`title` varchar(200) NOT NULL,
	`description` varchar(400),
	`pickup` varchar(50),
	`image_url` varchar(800),
	`url` varchar(800),
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

CREATE TABLE `ec_market_location`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`market_id` bigint(20) NOT NULL,
	`local_pickup` bit(1) DEFAULT 1,
	`loc_type` varchar(20) NOT NULL,
	`attention` varchar(50),
	`addr1` varchar(100) NOT NULL,
	`addr2` varchar(50),
	`addr_num`  varchar(50),
	`addr_street`  varchar(50),
	`prefix`  varchar(50),
	`postfix`  varchar(50),
	`state`  varchar(50),
	`city`  varchar(50),
	`county`  varchar(50),
	`country`  varchar(50),
	`postal_code` varchar(50),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`market_id`) REFERENCES `ec_market` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_currency`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`type` varchar(128) NOT NULL,
	`scale` INT NOT NULL,
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
	
CREATE TABLE `ec_store`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`market_id` bigint(20) DEFAULT NULL,
	`name` varchar(200) NOT NULL,
	`description` varchar(1000),
	`currency_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`market_id`) REFERENCES `ec_market` (`id`),
	FOREIGN KEY (`currency_id`) REFERENCES `ec_currency` (`id`)
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
	FOREIGN KEY (`role_id`) REFERENCES `ec_role` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_store_item`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`store_id` bigint(20) NOT NULL,
	`name` varchar(200) NOT NULL,
	`description` varchar(1000),
	`price` decimal(8,2),
	`price_crypto` decimal(16,8),
	`discount_percent` int DEFAULT 0,
	`discount_value` decimal(8,2),
	`discount_crypto_value` decimal(16,8),
	`discount_start_date` datetime,
	`discount_end_date` datetime,
	`inventory_count` INT DEFAULT 0,
	`size` varchar(100),
	`color` varchar(100),
	`category` varchar(100),
	`available_start_date` datetime DEFAULT '1970-01-01 00:00:01',
	`available_end_date` datetime DEFAULT '2999-01-01 23:59:59',
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
	FOREIGN KEY (`store_item_id`) REFERENCES `ec_store_item` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
		
CREATE TABLE `ec_cart`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`member_id` bigint(20) NOT NULL,
	`store_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`member_id`) REFERENCES `ec_member` (`id`),
	FOREIGN KEY (`store_id`) REFERENCES `ec_store` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_cart_item`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`cart_id` bigint(20) NOT NULL,
	`store_item_id` bigint(20) NOT NULL,
	`quantity` INT DEFAULT 1,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`cart_id`) REFERENCES `ec_cart` (`id`),
	FOREIGN KEY (`store_item_id`) REFERENCES `ec_store_item` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_order`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`member_id` bigint(20) NOT NULL,
	`store_id` bigint(20) NOT NULL,
	`workflow_status` varchar(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`member_id`) REFERENCES `ec_member` (`id`),
	FOREIGN KEY (`store_id`) REFERENCES `ec_store` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_order_item`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`order_id` bigint(20) NOT NULL,
	`store_item_id` bigint(20) NOT NULL,
	`quantity` INT DEFAULT 0,
	`discount_percent` INT DEFAULT 0,
	`discount_value` decimal(8,2),
	`unit_price` decimal(8,2),
	`unit_price_crypto`  decimal(16,8),
	`sale_price` decimal(8,2),
	`sale_price_crypto` decimal(16,8),
	`total_price` decimal(8,2),
	`total_price_crypto` decimal(16,8),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`order_id`) REFERENCES `ec_order` (`id`),
	FOREIGN KEY (`store_item_id`) REFERENCES `ec_store_item` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_receipt`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`order_id` bigint(20) NOT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`order_id`) REFERENCES `ec_order` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `ec_receipt_item`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`receipt_id` bigint(20) NOT NULL,
	`store_item_id` bigint(20) NOT NULL,
	`quantity` INT DEFAULT 0,
	`discount_percent` INT DEFAULT 0,
	`discount_value` decimal(8,2),
	`unit_price` decimal(8,2),
	`unit_price_crypto`  decimal(16,8),
	`sale_price` decimal(8,2),
	`sale_price_crypto` decimal(16,8),
	`total_price` decimal(8,2),
	`total_price_crypto` decimal(16,8),
	`size` varchar(100),
	`color` varchar(100),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`receipt_id`) REFERENCES `ec_receipt` (`id`),
	FOREIGN KEY (`store_item_id`) REFERENCES `ec_store_item` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;