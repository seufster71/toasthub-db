
-- Remember to use sudo mysql -u root -p after install

CREATE USER 'cyborg'@'localhost' IDENTIFIED BY 'c7b8rg';
GRANT ALL PRIVILEGES ON *.* TO 'cyborg'@'localhost' WITH GRANT OPTION;

CREATE USER 'cyborg'@'%' IDENTIFIED BY 'c7b8rg';
GRANT ALL PRIVILEGES ON *.* TO 'cyborg'@'%' WITH GRANT OPTION;

CREATE USER 'toasthub'@'localhost' IDENTIFIED BY 'T0asth3b#';
GRANT SELECT,INSERT,UPDATE,DELETE ON cborgapp_cborgtech.* TO 'toasthub'@'localhost';
GRANT SELECT,INSERT,UPDATE,DELETE ON cborgapp_main.* TO 'toasthub'@'localhost';

FLUSH PRIVILEGES;


CREATE SCHEMA `pidragon_cborgtech` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
CREATE SCHEMA `pidragon_main` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;