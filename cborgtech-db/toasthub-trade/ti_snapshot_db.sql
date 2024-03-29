DROP TABLE IF EXISTS `ta_ti_snapshot_detail`,
`ta_ti_snapshot`;
CREATE TABLE `ta_ti_snapshot` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `ti_snapshot_id` bigint (20),
    `identifier` varchar(64),
    `technical_indicator_key` varchar(64),
    `technical_indicator_type` varchar(64),
    `evaluation_period` varchar(64),
    `updating` bit(1) DEFAULT 0,
    `symbol` varchar(64),
    `short_sma_evaluation_duration` bigint(20),
    `long_sma_evaluation_duration` bigint(20),
    `lbb_evaluation_duration` bigint(20),
    `ubb_evaluation_duration` bigint(20),
    `standard_deviations` decimal (10, 4),
    `flashed` bigint(20) DEFAULT 0,
    `checked` bigint(20) DEFAULT 0,
    `successes` bigint(20) DEFAULT 0,
    `first_check` bigint(20) DEFAULT NULL,
    `last_flash` bigint(20) DEFAULT NULL,
    `last_check` bigint(20) DEFAULT NULL,
    `is_active` bit(1) DEFAULT 1,
    `is_archive` bit(1) DEFAULT 0,
    `is_locked` bit(1) DEFAULT 0,
    `lockowner_id` bigint(20) DEFAULT NULL,
    `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `lock_time` datetime,
    `version` bigint(20) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`custom_technical_indicator_id`) REFERENCES `ta_custom_technical_indicator` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE utf8_unicode_ci;
CREATE TABLE `ta_ti_snapshot_detail` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `identifier` varchar(64),
    `ti_snapshot_id` bigint (20) NOT NULL,
    `flash_time` bigint (20),
    `flash_price` decimal (10, 4),
    `volume` bigint (20),
    `vwap` decimal(10, 4),
    `checked` bigint (20),
    `success` bit(1) DEFAULT 0,
    `success_percent` decimal (10, 4),
    `is_active` bit(1) DEFAULT 1,
    `is_archive` bit(1) DEFAULT 0,
    `is_locked` bit(1) DEFAULT 0,
    `lockowner_id` bigint(20) DEFAULT NULL,
    `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `lock_time` datetime,
    `version` bigint(20) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`ti_snapshot_id`) REFERENCES `ta_ti_snapshot` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE utf8_unicode_ci;