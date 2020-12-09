# golang oracle learning

> for mac

## install oci-wrapper

* download

```code
cd $HOME/Downloads
curl -O https://download.oracle.com/otn_software/mac/instantclient/198000/instantclient-basic-macos.x64-19.8.0.0.0dbru.dmg
hdiutil mount instantclient-basic-macos.x64-19.8.0.0.0dbru.dmg
/Volumes/instantclient-basic-macos.x64-19.8.0.0.0dbru/install_ic.sh
hdiutil unmount /Volumes/instantclient-basic-macos.x64-19.8.0.0.0dbru
```

* config

```code

set oracel_home:
mkdir /Users/dalong/Downloads/instantclient_19_8/lib
mv /Users/dalong/Downloads/instantclient_19_8/ /Users/dalong/Downloads/instantclient_19_8/lib/
export ORACLE_HOME=/Users/dalong/Downloads/instantclient_19_8 

```

## docker running

* buil image

```code
docker build -t dalongrong/golang-oracle .
```
* start service

docker run -it dalongrong/golang-oracle -uname <username> -password <password> -oraclehost <ip>  -dbname <db>

## refs

https://oracle.github.io/odpi/doc/installation.html#oracle-instant-client-dmg-files

https://blogs.oracle.com/developers/connecting-to-oracle-databases-using-godror-and-sqlx
