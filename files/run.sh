#!/bin/bash
export UPSTREAM=${UPSTREAM:-"php_container:9000"}
export DOMAIN=${DOMAIN:-"localhost"}
export LOCATION=${LOCATION:-"#ADD_LOCATION"}
export USE_DOCKERIZE=${USE_DOCKERIZE:-"yes"}
export WEBROOT=${WEBROOT:-"/var/www/public"}
if [ $USE_DOCKERIZE == "yes" ];
then
    echo "USE the dockerize template";
    dockerize -template /etc/nginx/default.tmpl > /etc/nginx/sites-available/default
fi

nginx
