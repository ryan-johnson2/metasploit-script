#!/bin/sh
apt-get install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt1-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool libncurses5-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
apt-get install build-essential libreadline-dev libssl-dev libpq5 libpq-dev libreadline5 libsqlite3-dev libpcap-dev openjdk-7-jre subversion git-core autoconf postgresql pgadmin3 curl zlib1g-dev libxml2-dev libxslt1-dev vncviewer libyaml-dev ruby1.9.3 openjdk-7-jdk nmap -y
#installs reguired packages
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled
rvm install ruby-1.9.3-p484
#installs ruby
source /usr/local/rvm/scripts/rvm
#finishes ruby installation
gem install --verbose --debug pcaprub wirble pg sqlite3 msgpack activerecord redcarpet rspec simplecov yard bundler
gem install nokogiri -- --use-system-libraries
#installs ruguired ruby gems
cd /opt
wget http://downloads.metasploit.com/data/releases/archive/framework-3.5.0.tar.bz2
#gets metasploit source from github
tar -xjfv framework-3.5.0.tar.bz2
#extracts msf
rm framework-3.5.0.tar.bz2
#clean up
cd /opt/msf3
bash -c 'for MSF in $(ls msf*); do ln -s /opt/metasploit-framework/$MSF /usr/local/bin/$MSF;done'
#sets commands
