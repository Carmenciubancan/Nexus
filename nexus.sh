apt-get update
apt install openjdk-8-jre-headless
apt install net-tools

cd /opt
wget https://download.sonatype.com/nexus/3/nexus-unix-x86-64-3.78.1-02.tar.gz
tar -zxvf nexus-3.78.1-02

adduser nexus
chown -R nexus:nexus 
chown -R nexus:nexus sonatype-work

vim nexus-3.78.1-02/bin/nexus
run_as_user="nexus"

su - nexus
/opt/nexus-3.78.1-02/bin/nexus start

ps aux | grep nexus
netstat -lnpt
