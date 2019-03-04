# To grant or limit access to PHPMyAdmin through the URL (No Apache)
# Run the following commands

# Check the file PHPMyAdmin.conf
sudo vi /etc/httpd/conf.d/phpMyAdmin.conf

# Add the IP to the required list of IP
<Directory /usr/share/phpMyAdmin/>
   AddDefaultCharset UTF-8

   <IfModule mod_authz_core.c>
     # Apache 2.4
     <RequireAny>
       Require ip 199.246.65.5
       Require ip 70.48.232.48
       Require ip 99.230.119.219
       Require ip 64.229.203.168
       Require ip 127.0.0.1
       Require ip ::1
     </RequireAny>
   </IfModule>
   <IfModule !mod_authz_core.c>
     # Apache 2.2
     Order Deny,Allow
     Deny from All
     Allow from 199.246.65.5
     Allow from 99.230.119.219
     Allow from 70.48.232.48
     Allow from 64.229.203.168
     Allow from 127.0.0.1
     Allow from ::1
   </IfModule>
</Directory>

# Restart httpd
sudo service httpd restart
