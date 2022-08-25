#!/bin/sh

load_base(){
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

	echo "Loading alg_UBB_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/alg_UBB_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/alg_UBB_db.sql
	else
		echo "ERROR **** File alg_UBB_db.sql is missing ***"   
	fi

	#custom technical indicator contains a macro for symbol, and ti_snapshot
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

	echo "Loading configuration_db.sql to ${1}"     
	if [ -f ../../toasthub-trade/configuration_db.sql ]; then
   		mysql -h ${2} -u ${3} --password=${4} ${1} < ../../toasthub-trade/configuration_db.sql
	else
		echo "ERROR **** configuration_db.sql is missing ***"   
	fi
   	
	echo "Done Loading db ${1}"
	}
	
all() {
	load_base tradeanalyzer_member localhost cyborg c7b8rg#P
	}
	
all