#!/bin/sh

load_base(){
	echo "Dropping db ${1}"
   	mysqladmin -h ${2} -u ${3} --password=${4} --force drop ${1}
   	
	echo "Creating db ${1}"
  	mysqladmin -h ${2} -u ${3} --password=${4} create ${1}
  	
	echo "Loading client_db.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_db.sql
   	
    echo "Loading client_language_db_data to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_language_db_data.sql
   	
   	echo "Loading client_menu_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < client_menu_db_data.sql
   	
   	echo "Loading client_global_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_global_db_data.sql
   	
   	echo "Loading client_login_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_login_db_data.sql
   	
   	echo "Loading client_change_password_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_change_password_db_data.sql
   	
   	echo "Loading client_registration_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_registration_db_data.sql
   	
   	echo "Loading client_forgot_password_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_forgot_password_db_data.sql
   	
   	echo "Loading client_confirm_email_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_confirm_email_db_data.sql
   	
   	echo "Loading client_user_profile_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_user_profile_db_data.sql
   	
   	echo "Loading client_service_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < client_service_db_data.sql

   	echo "Loading admin_db_data.sql to ${1}"
	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/admin_db_data.sql
	
	echo "Done Loading db ${1}"
	}
	
all() {
	load_base pidragon_cborgtech localhost cyborg c7b8rg
	}
	
all