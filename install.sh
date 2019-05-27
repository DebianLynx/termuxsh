apt update
apt install git
git clone https://github.com/DebianLynx/termuxsh.git
cd termuxsh
chmod +x service 
mv ./service /data/data/com.termux/files/usr/bin/

if [ -f /data/data/com.termux/files/usr/etc/service ]; then
    echo "service dir areadly created,maybe it's a update install"
else
    mkdir /data/data/com.termux/files/usr/etc/service
fi 



