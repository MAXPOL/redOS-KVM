#!/bin/bash

yum update -y
yum install seabios qemu-kvm libvirt libvirt-python virt-install virt-manager openssh-askpass OVMF -y
systemctl enable libvirtd
systemctl start libvirtd
usermod -a -G libvirt user
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
reboot
