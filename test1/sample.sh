#!/bin/bash

# Update package repository
echo "Updating package repository..."
sudo yum update -y

# Install httpd package
echo "Installing httpd..."
sudo yum install -y httpd

# Start the httpd service
echo "Starting httpd service..."
sudo systemctl start httpd

# Enable httpd service to start on boot
echo "Enabling httpd to start on boot..."
sudo systemctl enable httpd

# Check the status of httpd service
echo "Checking the status of httpd service..."
sudo systemctl status httpd --no-pager

# Configure the firewall to allow HTTP traffic
echo "Configuring firewall to allow HTTP traffic..."
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

# Verify firewall rules
echo "Verifying firewall rules..."
sudo firewall-cmd --list-all

echo "httpd installation and configuration completed successfully."

