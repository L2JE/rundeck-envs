# rundeck-envs

This is a set of basic environments for rundeck developement/testing.

### instances
The rundeck instances are in the `instances` directory with the name `<OS-name>_<type-of-rd-install>`.

#### Current Features
The current implementation simply:
* Makes sure rundeck is accessible from the host machine
* Let the user modify both rundeck-config and framework properties files
* For more advanced usage you might need to access the machine using `vagrant ssh` as usual

#### Basic Configuration

To configure setup the instance configuration modify the following properties in the corresponding `vagranfile`:

`RUNDECK_PKG` #Full name of the desired rundeckpro package

`INSTANCE_IP` and `INSTANCE_PORT` #http://INSCANCE_IP:INSTANCE_PORT

`DB_URL_STRING` #The url that uses rundeck to connect to the database. IF NOT EMPTY, must set all DB_* variables

`DB_DRIVER` #jdbc driver to connect to the db

`DB_DRIVER_DOWNLOAD_URL` #Download url to be used for a script to download the driver

`DB_USER` and `DB_PASS` #DB login data

#### Custom Configuration
If it is necessary to use specific properties:
1. Drop a file next to the `vagrantfile` with ONLY the required properties.
2. The file must have the name `rundeck-config.properties` or `framework.properties` and will be merged with the instance properties files.
