#! /bin/sh
# -*- shell-script -*-

zypper addrepo --check --gpgcheck --refresh obs://Kernel:stable/standard Kernel:stable
zypper --gpg-auto-import-keys refresh
zypper --non-interactive install --from Kernel:stable kernel-default
