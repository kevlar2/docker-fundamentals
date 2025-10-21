#!/bin/bash

who=$(whoami)
working_directory=$(pwd)
user_info=$(cat /etc/passwd | grep kevino)

echo "user= $who | pwd= $working_directory | app_evn= $APP_ENV"
echo 
echo "Extra user info: $user_info"

sleep 500
