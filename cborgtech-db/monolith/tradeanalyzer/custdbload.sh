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
   	
   	echo "Loading client_admin_page_form_field_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_page_form_field_db_data.sql
   	
   	echo "Loading client_admin_page_label_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_page_label_db_data.sql
   	
   	echo "Loading client_admin_page_text_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_page_text_db_data.sql
   	
   	echo "Loading client_admin_page_option_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_page_option_db_data.sql
   	
   	echo "Loading client_admin_preference_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_preference_db_data.sql
   	
   	echo "Loading client_admin_language_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_language_db_data.sql
   	
   	echo "Loading client_admin_service_crawler_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_system_service_crawler_db_data.sql
   	
   	echo "Loading client_admin_user_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_user_db_data.sql
   	
   	echo "Loading client_admin_client_domain_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_system_client_domain_db_data.sql
   	
   	echo "Loading client_admin_application_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_system_application_db_data.sql
   	
   	echo "Loading client_admin_permission_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_permission_db_data.sql
   	
   	echo "Loading client_admin_roles_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_roles_db_data.sql
   	
   	echo "Loading client_admin_menu_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_menu_db_data.sql
   	
   	echo "Loading client_admin_category_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_admin_category_db_data.sql
   	
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
   	
   	echo "Loading client_user_profile_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_user_profile_db_data.sql

	echo "Loading client_service_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/client_service_db_data.sql
   	
   	echo "Loading admin_db_data.sql to ${1}"
	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub/admin_db_data.sql
	
   	
	echo "Loading client_menu_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/client_menu_db_data.sql
	
	echo "Loading trade_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/trade_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/trade_db.sql
	else
		echo "ERROR **** File trade_db.sql is missing ***"   
	fi

	echo "Loading alg_LBB_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/alg_LBB_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/alg_LBB_db.sql
	else
		echo "ERROR **** File alg_LBB_db.sql is missing ***"   
	fi

	echo "Loading alg_EMA_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/alg_EMA_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/alg_EMA_db.sql
	else
		echo "ERROR **** File alg_EMA_db.sql is missing ***"   
	fi
	
	echo "Loading alg_SMA_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/alg_SMA_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/alg_SMA_db.sql
	else
		echo "ERROR **** File alg_SMA_db.sql is missing ***"   
	fi

	echo "Loading alg_MACD_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/alg_MACD_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/alg_MACD_db.sql
	else
		echo "ERROR **** File alg_MACD_db.sql is missing ***"   
	fi

	echo "Loading alg_SL_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/alg_SL_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/alg_SL_db.sql
	else
		echo "ERROR **** File alg_SL_db.sql is missing ***"   
	fi

	echo "Loading asset_day_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/asset_day_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/asset_day_db.sql
	else
		echo "ERROR **** File asset_day_db.sql is missing ***"   
	fi

	echo "Loading asset_minute_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/asset_minute_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/asset_minute_db.sql
	else
		echo "ERROR **** File asset_minute_db.sql is missing ***"   
	fi

	echo "Loading alg_UBB_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/alg_UBB_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/alg_UBB_db.sql
	else
		echo "ERROR **** File alg_UBB_db.sql is missing ***"   
	fi

	echo "Loading custom_technical_indicator_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/custom_technical_indicator_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/custom_technical_indicator_db.sql
	else
		echo "ERROR **** custom_technical_indicator_db.sql is missing ***"   
	fi

	echo "Loading technical_indicator_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/technical_indicator_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/technical_indicator_db.sql
	else
		echo "ERROR **** technical_indicator_db.sql is missing ***"   
	fi

	echo "Loading symbol_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/symbol_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/symbol_db.sql
	else
		echo "ERROR **** symbol_db.sql is missing ***"   
	fi

	echo "Loading configuration_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/configuration_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/configuration_db.sql
	else
		echo "ERROR **** configuration_db.sql is missing ***"   
	fi
	
   	
   	echo "Loading client_service_db_data.sql to ${1}"
   	mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/client_service_db_data.sql
   	
   	
	echo "Done Loading db ${1}"
	}
	
all() {
	load_base tradeanalyzer_member localhost cyborg c7b8rg#P
	}
	
all