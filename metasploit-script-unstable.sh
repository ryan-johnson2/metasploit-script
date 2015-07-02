#!/bin/sh
wget http.us.debian.org/debian/pool/main/g/glibc/libc6_2.19-18_armhf.deb
wget http.us.debian.org/debian/pool/main/libf/libffi/libffi6_3.1-2+b2_armhf.deb
wget http.us.debian.org/debian/pool/main/r/ruby2.1/libruby2.1_2.1.5-2+deb8u1_armhf.deb
wget http.us.debian.org/debian/pool/main/r/rubygems-integration/rubygems-integration_1.8_all.deb
wget http.us.debian.org/debian/pool/main/r/ruby2.1/ruby2.1_2.1.5-2+deb8u1_armhf.deb
#getting dependencies for ruby 2.1
dpkg -i libc6_2.19-18_armhf.deb
dpkg -i libffi6_3.1-2+b2_armhf.deb
dpkg -i libruby2.1_2.1.5-2+deb8u1_armhf.deb
dpkg -i rubygems-integration_1.8_all.deb
dpkg -i ruby2.1_2.1.5-2+deb8u1_armhf.deb
#installs ruby
aptitude install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt1-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool libncurses5-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
apt-get install build-essential libreadline-dev libssl-dev libpq5 libpq-dev libreadline5 libsqlite3-dev libpcap-dev openjdk-7-jre subversion git-core autoconf postgresql pgadmin3 curl zlib1g-dev libxml2-dev libxslt1-dev vncviewer libyaml-dev openjdk-7-jdk nmap -y
#installs reguired packages
source /usr/local/rvm/scripts/rvm
#finishes ruby installation
gem install --verbose --debug pcaprub wirble pg sqlite3 msgpack activerecord redcarpet rspec simplecov yard bundler
gem install nokogiri -- --use-system-libraries
#installs ruguired ruby gems
cd /opt
git clone https://github.com/rapid7/metasploit-framework.git
#gets metasploit source from github
cd /opt/metasploit-framework
bash -c 'for MSF in $(ls msf*); do ln -s /opt/metasploit-framework/$MSF /usr/local/bin/$MSF;done'
#sets commands
