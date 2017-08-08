
CREATE TABLE `texts`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`default_text` text,
	`modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` timestamp NOT NULL DEFAULT '1970-01-01 00:00:01',
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `langtexts`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`text_id` bigint(20) NOT NULL,
	`lang` varchar(5) NOT NULL,
	`text` text,
	`modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` timestamp NOT NULL DEFAULT '1970-01-01 00:00:01',
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_text_lang` (`text_id`,`lang`),
	FOREIGN KEY (`text_id`) REFERENCES `texts` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
	
CREATE TABLE `clientdomains`
	(`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`title_id` bigint(20) NOT NULL,
	`url_domain` varchar(125) NOT NULL,
	`app_domain` varchar(64) NOT NULL,
	`app_name` varchar(64) NOT NULL,
	`html_prefix` varchar(64) NOT NULL,
	`public_layout` varchar(128),
	`admin_layout` varchar(128),
	`member_layout` varchar(128),
	`sysadmin_layout` varchar(128),
	`is_active` bit(1) DEFAULT 1,
	`is_archive` bit(1) DEFAULT 0,
	`is_locked` bit(1) DEFAULT 0,
	`lockowner_id` bigint(20) DEFAULT NULL,
	`modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`created` timestamp NOT NULL DEFAULT '1970-01-01 00:00:01',
	`lock_time` timestamp DEFAULT '1970-01-01 00:00:01',
	`version` bigint(20) NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `uk_url_domain` (`url_domain`),
	UNIQUE KEY `uk_url_app` (`url_domain`,`app_domain`),
	FOREIGN KEY (`title_id`) REFERENCES `texts` (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
