#!/bin/sh

load_base(){
	echo "Dropping db ${1}"
   	mysqladmin -h ${2} -u ${3} --password=${4} --force drop ${1}
   	
	echo "Creating db ${1}"
  	mysqladmin -h ${2} -u ${3} --password=${4} create ${1}
  	
  	
  	## Client
	echo "Loading client_db.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_db.sql
   	
    echo "Loading client_language_db_data to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_language_db_data.sql
   	
   	echo "Loading client_category_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_category_db_data.sql
   	
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
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_service_db_data.sql
   	
   	
   	## social
   	echo "Loading client_social_aquaintance_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_social_aquaintance_db_data.sql
   	
   	echo "Loading client_social_activity_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_social_activity_db_data.sql
   	
   	echo "Loading client_social_group_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_social_group_db_data.sql
   	
   	echo "Loading client_social_library_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_social_library_db_data.sql
   	
   	echo "Loading client_social_event_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_social_event_db_data.sql
   	
   	echo "Loading client_social_location_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_social_location_db_data.sql
   	
   	
   	## Admin
   	echo "Loading client_admin_page_form_field_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_page_form_field_db_data.sql
   	
   	echo "Loading client_admin_page_label_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_page_label_db_data.sql
   	
   	echo "Loading client_admin_page_text_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_page_text_db_data.sql
   	
   	echo "Loading client_admin_page_option_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_page_option_db_data.sql
   	
   	echo "Loading client_admin_preference_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_preference_db_data.sql
   	
   	echo "Loading client_admin_language_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_language_db_data.sql
   	
   	echo "Loading client_admin_permission_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_permission_db_data.sql
   	
   	echo "Loading client_admin_user_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_user_db_data.sql
   	
   	echo "Loading client_admin_roles_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_roles_db_data.sql
   	
   	echo "Loading client_admin_menu_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_menu_db_data.sql
   	
   	echo "Loading client_admin_category_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/client_admin_category_db_data.sql
   	
   	echo "Loading admin_db_data.sql to ${1}"
	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-admin/admin_db_data.sql
	
	
	## System
   	echo "Loading client_admin_service_crawler_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_system_service_crawler_db_data.sql
   	
   	echo "Loading client_admin_client_domain_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_system_client_domain_db_data.sql
   	
   	echo "Loading client_admin_application_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_system_application_db_data.sql
   	
	
	## Colony Command
	echo "Loading client_menu_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < client_menu_db_data.sql
	
   	echo "Loading client_service_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-colony/client_service_db_data.sql
   	
   	echo "Loading client_organization_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-colony/client_organization_db_data.sql
   	
   	echo "Loading client_hive_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-colony/client_hive_db_data.sql
   	
   	echo "Loading client_hive_sensor_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-colony/client_hive_sensor_db_data.sql
   	
   	
 	## Project management
   	echo "Loading client_product_db_data.sql to ${1}"
	if [ -f ../../toasthub-pm/client_product_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_product_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_product_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_project_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_project_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_project_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_project_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_release_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_release_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_release_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_release_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_backlog_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_backlog_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_backlog_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_backlog_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_scrum_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_scrum_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_scrum_db_data.sql
	else
		echo "ERROR **** toasthub-pm/client_scrum_db_data.sql is missing ***"   
	fi
	
	echo "Loading client_defect_db_data.sql to ${1}"
	if [ -f ../../toasthub-pm/client_defect_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_defect_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_defect_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_enhancement_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_enhancement_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_enhancement_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_enhancement_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_task_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_task_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_task_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_task_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_workflow_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_workflow_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_workflow_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_workflow_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_workflow_step_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_workflow_step_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_workflow_step_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_workflow_step_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_deploy_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_deploy_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_deploy_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_deploy_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_team_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_team_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_team_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_team_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_member_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_member_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_member_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_member_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_permission_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_permission_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_permission_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_permission_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_roles_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_roles_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_roles_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_roles_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_service_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_service_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_service_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_service_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_testcase_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_testcase_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_testcase_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_testcase_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_testscript_db_data.sql to ${1}"
   	if [ -f ../../toasthub-pm/client_testscript_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_testscript_db_data.sql
   	else
		echo "ERROR **** toasthub-pm/client_testscript_db_data.sql is missing ***"   
	fi
   	
   	
   	## Ecommerce
   	echo "Loading client_service_db_data.sql to ${1}"
	if [ -f ../../toasthub-ec/client_service_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-ec/client_service_db_data.sql
   	else
		echo "ERROR **** toasthub-ec/client_service_db_data.sql is missing ***"   
	fi
	
   	echo "Loading client_market_db_data.sql to ${1}"
	if [ -f ../../toasthub-ec/client_market_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-ec/client_market_db_data.sql
   	else
		echo "ERROR **** toasthub-ec/client_market_db_data.sql is missing ***"   
	fi
	
	echo "Loading client_store_db_data.sql to ${1}"
	if [ -f ../../toasthub-ec/client_store_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-ec/client_store_db_data.sql
   	else
		echo "ERROR **** toasthub-ec/client_store_db_data.sql is missing ***"   
	fi
	
	echo "Loading client_cart_db_data.sql to ${1}"
	if [ -f ../../toasthub-ec/client_cart_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-ec/client_cart_db_data.sql
   	else
		echo "ERROR **** toasthub-ec/client_cart_db_data.sql is missing ***"   
	fi

	
	echo "Done Loading db ${1}"
	}
	
load_colony_base(){
	echo "Dropping db ${1}"
   	mysqladmin -h ${2} -u ${3} --password=${4} --force drop ${1}
   	
	echo "Creating db ${1}"
  	mysqladmin -h ${2} -u ${3} --password=${4} create ${1}
  	

   	
    ## Colony Command
    echo "Loading colony_db.sql to ${1}"     
	if [ -f ../../toasthub-colony/colony_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-colony/colony_db.sql
	else
		echo "ERROR **** File colony_db.sql is missing ***"   
	fi
	
	## Ecommerce
	echo "Loading pm client_db.sql to ${1}"
	if [ -f ../../toasthub-ec/client_db.sql ]; then
		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-ec/client_db.sql
	else
		echo "ERROR **** toasthub-ec/client_db.sql is missing ***"   
	fi
	
	## Project Management
	echo "Loading pm client_db.sql to ${1}"
	if [ -f ../../toasthub-pm/client_db.sql ]; then
		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-pm/client_db.sql
	else
		echo "ERROR **** toasthub-pm/client_db.sql is missing ***"   
	fi
   	
   	echo "Loading app_client_db_data.sql to ${1}"
	if [ -f app_client_db_data.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < app_client_db_data.sql
   	else
		echo "ERROR **** File app_client_db_data.sql is missing ***"   
	fi
	
	echo "Done Loading db ${1}"
	}
	
all() {
	load_base colonycommand_member localhost cyborg c7b8rg#P
	load_colony_base colonycommand_memberdata localhost cyborg c7b8rg#P
	}
	
all