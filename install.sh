apt update
apt install git

if [ -d ./termuxsh ]; then
    rm -rf ./termuxsh 
fi 

git clone https://github.com/DebianLynx/termuxsh.git
cd termuxsh
chmod +x service 
mv ./service /data/data/com.termux/files/usr/bin/

if [ -d /data/data/com.termux/files/usr/etc/service ]; then
    echo "service dir areadly created,maybe it's an update install"
else
    mkdir /data/data/com.termux/files/usr/etc/service
fi 



