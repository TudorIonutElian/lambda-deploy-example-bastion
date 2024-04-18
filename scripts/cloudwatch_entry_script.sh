#!/bin/bash
  # Use this for your user data (script from top to bottom)
  # install httpd (Linux 2 version)
yum update -y
yum install -y httpd
yum install -y git
yum install -y nodejs 
yum install -y npm
systemctl start httpd
systemctl enable httpd