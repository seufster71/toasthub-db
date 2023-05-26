DROP TABLE IF EXISTS `cc_hive_sensor_data`;
DROP TABLE IF EXISTS `cc_hive_sensor`;
DROP TABLE IF EXISTS `cc_hive`;
DROP TABLE IF EXISTS `cc_organization`;

CREATE TABLE `cc_organization` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`identifier` varchar(256),
	`name` varchar(256),
	`status` varchar(48) NOT NULL,
	`status_message` varchar(64),
	`user_id` bigint(20) DEFAULT NULL,
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `UK_organization_id` (`identifier`),
	UNIQUE KEY `UK_organization_name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `cc_hive` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`organization_id` bigint(20) NOT NULL,
	`identifier` varchar(256),
	`security_token` varchar(1024),
	`name` varchar(256),
	`status` varchar(48) NOT NULL,
	`status_message` varchar(64),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`organization_id`) REFERENCES `cc_organization` (`id`),
	UNIQUE KEY `UK_organization_id` (`identifier`),
	UNIQUE KEY `UK_organization_name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `cc_hive_sensor` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`hive_id` bigint(20) NOT NULL,
	`identifier` varchar(256),
	`name` varchar(256),
	`type` varchar(64),
	`status` varchar(48) NOT NULL,
	`status_message` varchar(64),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`hive_id`) REFERENCES `cc_hive` (`id`),
	UNIQUE KEY `UK_organization_id` (`identifier`),
	UNIQUE KEY `UK_organization_name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `cc_hive_sensor_data` (
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`hive_sensor_id` bigint(20) NOT NULL,
	`epoch_seconds` bigint(20),
	`evaluation_period` varchar(64),
	`evaluation_duration` bigint(20),
	`value` decimal(10,4),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lock_time` datetime,
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`hive_sensor_id`) REFERENCES `cc_hive_sensor` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE utf8_unicode_ci;
