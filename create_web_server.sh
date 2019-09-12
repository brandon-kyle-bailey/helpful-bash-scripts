#!/bin/bash
# run this on an ubuntu container and it will create a simple web server and run it.
# optional integration with aws s3.

yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
echo "<html><div><h1>Hello World!</h1></div></html>" > /var/www/html/index.html

# aws s3 mb s3://brandon-kyle-bailey-s3-bash-webserver-2019
# aws s3 cp /var/www/html/index.html/index.html s3://brandon-kyle-bailey-s3-bash-webserver-2019
