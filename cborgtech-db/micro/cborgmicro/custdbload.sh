#!/bin/sh

load_base(){
	echo "Dropping db ${1}"
   	mysqladmin -h ${2} -u ${3} --password=${4} --force drop ${1}
   	
	echo "Creating db ${1}"
  	mysqladmin -h ${2} -u ${3} --password=${4} create ${1}
  	
	echo "Loading client_db.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_db.sql
   	
   	echo "Loading client_language_db_data to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_language_db_data.sql
   	
   	echo "Loading client_menu_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_menu_db_data.sql
   	
   	echo "Loading client_category_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_category_db_data.sql
   	
   	echo "Loading client_global_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_global_db_data.sql
   	
   	echo "Loading client_login_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_login_db_data.sql
   	
   	echo "Loading client_change_password_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_change_password_db_data.sql
   	
   	echo "Loading client_registration_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_registration_db_data.sql
   	
   	echo "Loading client_forgot_password_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_forgot_password_db_data.sql
   	
   	echo "Loading client_confirm_email_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_confirm_email_db_data.sql
   	
   	echo "Loading client_admin_page_form_field_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_page_form_field_db_data.sql
   	
   	echo "Loading client_admin_page_label_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_page_label_db_data.sql
   	
   	echo "Loading client_admin_page_text_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_page_text_db_data.sql
   	
   	echo "Loading client_admin_page_option_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_page_option_db_data.sql
   	
   	echo "Loading client_admin_preference_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_preference_db_data.sql
   	
   	echo "Loading client_admin_language_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_language_db_data.sql
   	
   	echo "Loading client_admin_service_crawler_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_service_crawler_db_data.sql
   	
   	echo "Loading client_admin_user_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_user_db_data.sql
   	
   	echo "Loading client_admin_client_domain_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_client_domain_db_data.sql
   	
   	echo "Loading client_admin_application_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_application_db_data.sql
   	
   	echo "Loading client_admin_permission_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_permission_db_data.sql
   	
   	echo "Loading client_admin_roles_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_roles_db_data.sql
   	
   	echo "Loading client_admin_menu_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_admin_menu_db_data.sql
   	
   	echo "Loading client_social_aquaintance_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_social_aquaintance_db_data.sql
   	
   	echo "Loading client_social_activity_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_social_activity_db_data.sql
   	
   	echo "Loading client_social_group_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_social_group_db_data.sql
   	
   	echo "Loading client_social_library_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_social_library_db_data.sql
   	
   	echo "Loading client_social_event_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_social_event_db_data.sql
   	
   	echo "Loading client_social_location_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_social_location_db_data.sql
   	
   	echo "Loading client_user_profile_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/client_user_profile_db_data.sql
   	
   	echo "Loading client_service_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < client_service_db_data.sql


   	echo "Loading admin_db_data.sql to ${1}"
	mysql -h ${2} -u ${3} --password=${4} ${1} < ../toasthub/admin_db_data.sql
	
	echo "Done Loading db ${1}"
}

override() {

	echo "Override client_registration_db_data.sql to ${1}"
	mysql -h ${2} -u ${3} --password=${4} ${1} < client_registration_db_data.sql
	
	echo "Done Loading db ${1}"
}
	
all() {
	load_base cborgmicro_internet localhost cyborg c7b8rg
	load_base cborgmicro_garagecloud localhost cyborg c7b8rg
	override cborgmicro_garagecloud localhost cyborg c7b8rg
}
	
all