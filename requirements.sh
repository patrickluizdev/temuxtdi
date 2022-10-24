#!/bin/bash
#Script desenvolvido para automatizar a instalação dos requisitos necessarios para o TERMUX para TDI

cd ~
apt update -y
apt upgrade -y
pkg update -y
pkg upgrade -y
clear

pkg install openssh openssl -y
clear

apt install curl wget -y
clear

apt install ncurses-utils
clear

pkg install net-tools
clear

pkg install python python2 ruby golang -y
clear

gem install lolcat
clear

pkg install nmap -y
clear


sleep 4
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap/

cd ~
clear

cd ~ 
git clone https://github.com/trustedsec/social-engineer-toolkit/ setoolkit/
cd setoolkit
pip3 install -r requirements.txt

cd ~
clear

sed -i '13,15 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/encryption_algorithm/functionable.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp256.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp384.rb; sed -i '14 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.1.0/gems/hrr_rb_ssh-0.4.2/lib/hrr_rb_ssh/transport/server_host_key_algorithm/ecdsa_sha2_nistp521.rb
clear


source <(curl -fsSL https://raw.githubusercontent.com/efxtv/Metasploit-in-termux/main/metasploit-6-termux.sh)
cd ~
clear

echo -e "\e[1;92m Para aplicar todas as mudanças digite 'exit'!"