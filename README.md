# LAMP Backup Script

Hey there! 👋 This is a simple Bash script that I use to automatically back up my LAMP (Linux, Apache, MySQL, PHP/Python/Perl) stack every 5 hours. It's a handy tool to ensure I don't lose any important website data.

## How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/lamp-backup-script.git
cd lamp-backup-script
```

2. Configure the Script

Open the lamp_backup.sh script in your favorite text editor. You'll find some variables at the beginning that you can customize:

```bash

# Variables
backup_dir="/path/to/backup"
vhost_path="/etc/apache2/sites-available"
website_files="/var/www/html"
db_user="your_mysql_user"
db_password="your_mysql_password"
db_name="your_database_name"
```
Update these variables with your specific LAMP setup details.
3. Make the Script Executable

```bash

chmod +x lamp_backup.sh
```
4. Schedule the Script

Open your crontab file:

```bash

crontab -e
```
Add the following line to run the script every 5 hours:

```bash

0 */5 * * * /path/to/lamp_backup.sh
```
Save and exit the crontab file.
Important Notes

    Make sure you have the necessary privileges to perform backups.
    Confirm that MySQL is configured to allow password-less execution of mysqldump.
    Adjust paths and variables in the script according to your specific LAMP setup.

Feedback and Contributions

I'd love to hear your feedback or suggestions! Feel free to open issues or pull requests on GitHub.

Happy coding and secure backups! 🚀
