#!/bin/bash
TOTAL=15
COUNT=`ps aux | grep controller-name/some-action | grep -v grep | wc -l`
LOOP=$COUNT

if [ $COUNT -ge $TOTAL ]
then
	echo "Command for uploading images is running"
else
	while [ $LOOP -le $TOTAL ]
	do
		{ nohup /var/www/www.website.com/yii controller-name/some-action & cd -; } 2>/dev/null
		LOOP=`expr $LOOP + 1`
	done
fi
