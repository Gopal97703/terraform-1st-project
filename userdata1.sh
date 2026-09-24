#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
systemctl start apache2
systemctl enable apache2

# Install AWS CLI
sudo apt-get install awscli -y

# Wait a little so IAM role credentials are ready
sleep 30

# Copy index.html from S3 bucket to Apache root
aws s3 cp s3://gt-tf-bucket/index.html /var/www/html/index.html --region ap-south-1

# Restart Apache to serve the new file
sudo systemctl restart apache2