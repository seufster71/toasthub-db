#!/bin/sh

load_base(){
	echo "Dropping db ${1}"
   	mysqladmin -h ${2} -u ${3} --password=${4} --force drop ${1}
   	
	echo "Creating db ${1}"
  	mysqladmin -h ${2} -u ${3} --password=${4} create ${1}
  	
  	echo "Loading main_db.sql to ${1}"     
	if [ -f ../../toasthub/main_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/main_db.sql
	else
		echo "ERROR **** File ../../toasthub/main_db.sql is missing ***"   
	fi
	
	echo "Loading app_main_db_data.sql to ${1}"
	if [ -f app_main_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < app_main_db_data.sql
   	else
		echo "ERROR **** File app_main_db_data.sql is missing ***"   
	fi
	
	echo "Loading security_db.sql to ${1}"
	if [ -f ../../toasthub/security_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/security_db.sql
   	else
		echo "ERROR **** File ../../toasthub/security_db.sql is missing ***"   
	fi
   	
   	echo "Loading security_db_data.sql to ${1}"
   	if [ -f ../../toasthub/security_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/security_db_data.sql
   	else
		echo "ERROR **** File ../../toasthub/security_db_data.sql is missing ***"   
	fi
   	
	echo "Loading app_security_db_data.sql to ${1}"
	if [ -f app_security_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < app_security_db_data.sql
   	else
		echo "WARNING **** File app_security_db_data.sql is missing ***"   
	fi
   	
	echo "Done Loading db ${1}"
}
	
all() {
	load_base bugdog_main localhost cyborg c7b8rg
}

all