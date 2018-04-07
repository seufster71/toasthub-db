

CREATE USER 'toasthub'@'localhost' IDENTIFIED BY 'T0asth3b#';
GRANT SELECT,INSERT,UPDATE,DELETE ON cborgapp_cborgtech.* TO 'toasthub'@'localhost';
GRANT SELECT,INSERT,UPDATE,DELETE ON cborgapp_main.* TO 'toasthub'@'localhost';

FLUSH PRIVILEGES;


