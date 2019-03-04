# To limit the access of the users IP to PHPMyAdmin from the URL do the following:

# Edit apache.conf
sudo vi /etc/phpmyadmin/apache.conf

# Add the lines
<Directory /usr/share/phpmyadmin>

    Options FollowSymLinks
    DirectoryIndex index.php

    Order Allow,Deny
    Allow from 127.0.0.1
    Allow from 68.24.9.0/24

    <IfModule mod_php5.c>

# Then restart apache
sudo service apache2 restart
