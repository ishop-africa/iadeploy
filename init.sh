#!/bin/bash
host_user=$(whoami)
app=$(cd ../ && basename "$PWD")

sed -i "s/{user}/$host_user/g" prod.json # Chage user name to empty string
sed -i "s/{app}/$app/g" prod.json # Chage user name to empty string
secretProd=$(openssl rand -base64 32)
sed -i "s/echo-secrets/$secretProd/g" prod.json # Chage user name to empty string
idProd=$(openssl rand -base64 12)
sed -i "s/{id}/$idProd/g" prod.json # Chage user name to empty string

sed -i "s/{user}/$host_user/g" test.json # Chage user name to empty string
sed -i "s/{app}/$app/g" test.json # Chage user name to empty string
secretTest=$(openssl rand -base64 32)
sed -i "s/echo-secrets/$secretTest/g" test.json # Chage user name to empty string
idTest=$(openssl rand -base64 12)
sed -i "s/{id}/$idTest/g" test.json # Chage user name to empty string

echo "use this secret on your repository webhook setings: $secret"
echo "your config sectings 
   {
    TEST:  {id: $idTest, secret: $secretTest},
    PROD:{
        id: $idProd,
        secret: $secretProd}
    } 
    "