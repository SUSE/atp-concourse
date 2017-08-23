#! /bin/sh
# -*- shell-script -*-

zypper refresh
zypper --non-interactive install postgresql

useradd --system concourse
mkdir -p /etc/concourse

curl -Lo /usr/local/bin/concourse https://github.com/concourse/concourse/releases/download/v3.4.0/concourse_linux_amd64
chmod +x /usr/local/bin/concourse

systemctl daemon-reload
systemctl enable concourse-worker.service
