#!/bin/bash
echo "Este es un mensaje" > /home/ec2-user/mensaje.txt
yum update -y
yum install htop -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd