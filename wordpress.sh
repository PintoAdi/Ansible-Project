#!/bin/bash
sudo yum update -y
sudo yum install -y httpd mysql git 
sudo amazon-linux-extras | grep php 
sudo amazon-linux-extras enable php8.0 -y
sudo yum clean metadata -y
sudo yum install php-cli php-pdo php-fpm php-mysqlnd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo git clone https://github.com/PintoAdi/Wordpress.git
sudo mv /home/ec2-user/Wordpress/* /var/www/html/
sudo chown -R apache:apache /var/www/html/
sudo systemctl restart httpd