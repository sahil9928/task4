mysqldump -u <username> -p<password> <database_name> > <backup_file_name>.sql


mysqldump -u root -pMyPassword my_database > backup_my_database.sql


crontab -e


0 0 * * * mysqldump -u root -pMyPassword my_database > /path/to/backup_directory/backup_my_database_$(date +\%F).sql


mysql -u <username> -p<password> <database_name> < <backup_file_name>.sql


mysql -u root -pMyPassword my_database < backup_my_database.sql


mysql -u root -pMyPassword -e "DROP DATABASE my_database;"


mysql -u root -pMyPassword -e "CREATE DATABASE my_database;"


mysql -u root -pMyPassword my_database < backup_my_database.sql



