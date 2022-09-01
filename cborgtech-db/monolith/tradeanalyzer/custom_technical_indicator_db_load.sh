#!/bin/sh

load_base(){
echo "Loading custom_technical_indicator_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/custom_technical_indicator_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/custom_technical_indicator_db.sql
	else
		echo "ERROR **** File custom_technical_indicator_db.sql is missing ***"   
	fi
echo "Done Loading trade to ${1}"
}
	
all() {
	load_base tradeanalyzer_member localhost cyborg c7b8rg#P
	}
	
all