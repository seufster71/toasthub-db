#!/bin/sh

load_base(){
echo "Loading trade_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/trade_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/trade_db.sql
	else
		echo "ERROR **** File trade_db.sql is missing ***"   
	fi
echo "Done Loading trade to ${1}"
}
	
all() {
	load_base tradeanalyzer_memberdata localhost cyborg c7b8rg#P
	}
	
all