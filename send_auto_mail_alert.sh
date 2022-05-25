#!/bin/bash
#shell script to send automatic mail alert whrn ram memory gets low
TO="ammananna1216@gmail.com"
TH_L=450
free_RAM=$( free -mt | grep -e "Total" | awk '{print $4}')

if [[ $free_RAM -lt $TH_L ]]
then
	echo -e "server is running with low ram size\navailable RAM is:  $free_RAM" | mail "Ram Info $(date)" $TO
fi

	

