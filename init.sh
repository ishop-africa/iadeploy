#!/bin/bash
host_user=$(whoami)
app=$1
secret=$(openssl rand -base64 32)

sed -i "s/{user}/$host_user/g" prod.json # Chage user name to empty string
sed -i "s/{app}/$app/g" prod.json # Chage user name to empty string
sed -i "s/{secret}/$secret/g" prod.json # Chage user name to empty string

sed -i "s/{user}/$host_user/g" test.json # Chage user name to empty string
sed -i "s/{app}/$app/g" test.json # Chage user name to empty string
sed -i "s/{secret}/$secret/g" test.json # Chage user name to empty string
