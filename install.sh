apt update
apt install git
git clone https://github.com/DebianLynx/termuxsh.git
cd termuxsh
chmod +x service 
mv ./service /data/data/com.termux/files/usr/bin/
mkdir /data/data/com.termux/files/usr/etc/service

