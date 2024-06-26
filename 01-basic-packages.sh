#!/bin/bash
#

apt update
apt -y -qq upgrade

CFG_HOSTNAME_FQDN=`hostname -f`
echo "postfix postfix/main_mailer_type select Internet Site" | debconf-set-selections
echo "postfix postfix/mailname string $CFG_HOSTNAME_FQDN" | debconf-set-selections
echo "iptables-persistent iptables-persistent/autosave_v4 boolean true" | debconf-set-selections
echo "iptables-persistent iptables-persistent/autosave_v6 boolean true" | debconf-set-selections
DEBIAN_FRONTEND=noninteractive

apt -y -qq install vim chrony openssh-server screen net-tools git mc postfix sendemail  \
	sudo wget curl ethtool iptraf-ng traceroute telnet rsyslog software-properties-common \
	dirmngr parted gdisk apt-transport-https lsb-release ca-certificates iputils-ping \
	bridge-utils 
 

