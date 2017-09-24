#!/bin/sh
xunleiPath=/jffs/.koolshare/thunder
PROCESS_2=portal
PROCESS_3=thunder
sleep 55
while true; do
COUNT_2=`ps|grep ${PROCESS_2}|grep -v grep|wc -l`
	if [ "${COUNT_2}" -lt "1" ]; then
		sh "${xunleiPath}/${PROCESS_2}" &
	fi
sleep 5
COUNT_3=`ps|grep ${PROCESS_3}|grep -v grep|wc -l`
	if [ "${COUNT_3}" -lt "10" ]; then
		sh "${xunleiPath}/${PROCESS_2}" &
	fi
sleep 660
done
