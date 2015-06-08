#!/bin/bash
if ps aux | grep controller-name/some-action | grep -v grep
then
    echo "Action is running"
else
    /var/www/www.website.com/yii controller-name/some-action
fi