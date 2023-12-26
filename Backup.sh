#!/bin/bash

# LAMP Backup Script

# Variables
backup_dir="/path/to/backup"
today=$(date +%Y-%m-%d)
current_time=$(date +%H:%M:%S)
backup_file="lamp_backup_$today-$current_time.tar.gz"
vhost_path="/etc/apache2/sites-available"
website_files="/var/www/html"
db_user="your_mysql_user"
db_password="your_mysql_password"
db_name="your_database_name"

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Change to backup directory
cd "$backup_dir" || exit

# Export MySQL database
mysqldump -u"$db_user" -p"$db_password" "$db_name" > dbbackup.sql

# Create a compressed tar archive
tar -czf "$backup_file" -C / "$vhost_path" -C / "$website_files" dbbackup.sql

# Remove the temporary database backup file
rm dbbackup.sql

# Display completion message
echo "LAMP Backup completed successfully at $current_time. Backup saved to $backup_dir/$backup_file"
