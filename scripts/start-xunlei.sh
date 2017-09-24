#!/bin/sh
eval `dbus export xunlei`
xunleiPath=/jffs/.koolshare/thunder
if [ ! -z "$xunleiPath" ];then
	sleep 10
	$xunleiPath/portal &
fi
