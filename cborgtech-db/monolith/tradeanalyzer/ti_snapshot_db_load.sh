#!/bin/sh

load_base(){
echo "Loading ti_snapshot_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/ti_snapshot_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/ti_snapshot_db.sql
	else
		echo "ERROR **** File ti_snapshot.sql is missing ***"   
	fi
echo "Done Loading ti_snapshot_db to ${1}"
}
	
all() {
	load_base tradeanalyzer_member localhost cyborg c7b8rg#P
	}
	
all