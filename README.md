# Server Backups


### Install & configure dependencies

```sh
apt install -y mydumper pigz python-pip
pip install awscli
```

Now you have to configure the aws client:

```
aws configure
```

## Serverpilot Backup

weekly filebackups ...
```sh
wget https://github.com/inkrement/serverpilot_backup/raw/master/serverpilot_filebackup -P /etc/cron.weekly/ && chmod a+x /etc/cron.weekly/serverpilot_filebackup
```
... and daily mysqlbackups
```
wget https://github.com/inkrement/serverpilot_backup/raw/master/mysqlbackup -P /etc/cron.daily/ && chmod a+x /etc/cron.daily/mysqlbackup
```

## Forge Backup

open my.cnf (e.g., `sudo vim /etc/mysql/my.cnf` and add following lines:
```
[client]
user = forge
password = <yourforgepassword>
```

weekly filebackups ...
```
sudo wget https://github.com/inkrement/serverpilot_backup/raw/master/forge_filebackup -P /etc/cron.weekly/ && sudo chmod a+x /etc/cron.weekly/forge_filebackup
```
... and daily mysqlbackups
```
sudo wget https://github.com/inkrement/serverpilot_backup/raw/master/mysqlbackup -P /etc/cron.daily/ && sudo chmod a+x /etc/cron.daily/mysqlbackup
```
