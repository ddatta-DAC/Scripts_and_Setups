/* ubuntu 18 */
sudo apt-get install mysql-server
sudo mysql -u root -p
sudo apt-get install php libapache2-mod-php
sudo apt install phpmyadmin php-mbstring php-gettext
sudo systemctl restart apache2
sudo phpenmod mbstring
sudo systemctl restart apache2
sudo mysql
sudo systemctl restart apache2
sudo ln -s /usr/share/phpmyadmin /var/www/html/
sudo systemctl restart apache2    

/* set mysql password as user_name - same as during apache installation */ user_name = ddatta       
sudo mysql        
SELECT user,authentication_string,plugin,host FROM mysql.user;        
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'user_name';       
FLUSH PRIVILEGES;       
SELECT user,authentication_string,plugin,host FROM mysql.user;      

