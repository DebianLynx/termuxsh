
install_tools() {
apt update
apt install wget unzip
#install tools
}


download() {
cd ~
if [ -d ./termuxsh ]; then
    rm -rf ./termuxsh 
fi 
wget https://fuckchina.ga/termuxsh.zip
unzip ./termux.zip
cd ./termuxsh
}


installservice() {
cd ~/termuxsh
chmod +x service 
mv ./service /data/data/com.termux/files/usr/bin/

#mkdir
if [ -d /data/data/com.termux/files/usr/etc/service ]; then
    echo "service dir areadly created,maybe it's an update install"
else
    mkdir /data/data/com.termux/files/usr/etc/service
fi
}


installconf() {
cd ~/termuxsh
chmod +x conf
if [ -d /data/data/com.termux/files/usr/etc/service ]; then
    echo "conf dir areadly created,maybe it's an update install"
else
    mkdir /data/data/com.termux/files/usr/etc/conf
fi
}
