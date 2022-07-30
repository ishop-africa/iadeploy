#!/bin/bash
if [ "$1" == "TEST"]; 
then
    git pull -f origin featere/develop

elif [ "$1" == "PROD"]; 
then
    git pull -f origin main

else
    echo "Usage: deploy.sh [TEST|PROD]"
    exit 1
fi

yarn install
yarn build
pm2 relaod all
pm2 save

