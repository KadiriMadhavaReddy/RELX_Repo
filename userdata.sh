#!/bin/bash
# Update system packages
apt-get update -y

# Install Apache Web Server
apt-get install -y apache2

# Start and enable Apache service to run on boot
systemctl start apache2
systemctl enable apache2

# Create a simple HTML page
echo "<h1>Hello, World! from Terraform on Ubuntu</h1>" > /var/www/html/index.html

# Set proper permissions (optional)
chmod 644 /var/www/html/index.html
