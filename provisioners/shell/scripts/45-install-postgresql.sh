#! /bin/sh
# -*- shell-script -*-

zypper refresh
zypper --non-interactive install postgresql postgresql-server

systemctl start postgresql.service
systemctl stop postgresql.service

augtool set /files/var/lib/pgsql/data/pg_hba.conf/1/method trust
