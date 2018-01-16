#! /bin/sh
# -*- shell-script -*-

useradd --system concourse
mkdir -p /etc/concourse

curl -Lo /usr/local/bin/concourse https://github.com/concourse/concourse/releases/download/v3.8.0/concourse_linux_amd64
chmod +x /usr/local/bin/concourse

systemctl daemon-reload

systemctl start postgresql.service

sudo -u postgres -- createuser --superuser atc
sudo -u postgres -- createdb --owner atc atc

systemctl stop postgresql.service
