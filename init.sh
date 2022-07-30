#!/bin/bash
host_user=$(whoami)
app=$1
id=$(openssl rand -base64 12)
secret=$(openssl rand -base64 32)

sed -i "s/{user}/$host_user/g" prod.json # Chage user name to empty string
sed -i "s/{app}/$app/g" prod.json # Chage user name to empty string
sed -i "s/{secret}/$secret/g" prod.json # Chage user name to empty string
sed -i "s/{id}/$id/g" prod.json # Chage user name to empty string

sed -i "s/{user}/$host_user/g" test.json # Chage user name to empty string
sed -i "s/{app}/$app/g" test.json # Chage user name to empty string
sed -i "s/{secret}/$secret/g" test.json # Chage user name to empty string
sed -i "s/{id}/$id/g" test.json # Chage user name to empty string

echo "use this secret on your repository webhook setings: $secret"
echo "your config sectings {id: $id, secret: $secret}"