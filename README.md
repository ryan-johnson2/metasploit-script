metasploit-script
=================

Metasploit installatoin script for Debian Wheezy XFCE. Used to install metaspoit on debian noroot(http://adf.ly/rRb7V) for Android.

I made this script so i don't need to use Kali Linux to run Metasploit on Android because running Kali needs rooted device and kernel that supports loop device. So this doesn't need loop device support and it should technicly work without root but i haven't tested it yet on nonrooted phone. Just be aware that I'm showing this for educational purposes only and I'm not responsible if you do any harm with metasploit.

This script installs metasploit version 3.5.0. Right now newer versions aren't available. If you want to help, you should take a look of metasploit-script-unstable.sh and help me to get it install the latest version of metasploit.
Note that you got to rune bundle install in metasploit-framework directory before starting msfconsole first time.

How to install metasploit on android using this script in debian noroot:

First you should check out my youtube video if you haven't yet (comming soon)

1. Download debian noroot from Google Playstore(http://adf.ly/rRb7V)

2. Open debian noroot, let it install and configure settings if needed

3. Open ROOT terminal and type "apt-get update" then "apt-get upgrade"

4. After you've updated your linux install github with "apt-get install git" command

5. Pull my script from github with "git clone https://github.com/MiksuLinuxGuy/metasploit-script.git"

6. To run my script you have to change directory "cd metasploit-script"

7. Run my script with "./metasploit-script.sh". It is gonna take a LONG time...

8. After installation, close root terminal and open just original terminal

9. Change directory with "cd opt/msf3"

10. Now you just have to type msfconsole and it will start metasploit. First start will always take long.

If you're having an error or you just wanna contact me, heres my email: miksu.rankaviita@gmail.com

If you liked my tutorial, go donate in my blog(http://adf.ly/rjLsy). Even 5$ would make me happy.(Your name will show down bleow if you donate)

Donated: 
