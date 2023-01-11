#!/bin/sh

sudo cp -rf app.conf /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled


# sudo usermod -a -G centos nginx

chmod 710 /var/lib/jenkins/workspace/DjangoApp

sudo nginx -t

sudo systemctl reload nginx

sudo systemctl restart nginx

sudo systemctl status nginx
