# Auto Deploy Configurations
You ned to provide the name of the application to be deployed 

To generate the configurations, you can use the following command:

```
$ mkdir -p ~/server/<app_name>
$ cd <app_name>
$ git clone git@github.com:ishop-africa/iadeploy.git deploy
$ cd deploy
$ ./init.sh <app_name>
```