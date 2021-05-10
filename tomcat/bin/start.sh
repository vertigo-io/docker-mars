#!/bin/sh
/usr/app/bin/wait-for-it.sh $ANALYTICS_URL -- /usr/app/bin/wait-for-it.sh $ES_URL -- catalina.sh run