sudo apt-get update
sudo apt-get upgrade
sudo apt-get install wget unzip -y

sudo apt-get install openjdk-11-jdk -y
sudo apt-get install openjdk-11-jre -y

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-8.x.list
sudo apt-get update && sudo apt-get install logstash


sudo nohup sudo /usr/share/logstash/bin/logstash -f /vagrant/1.conf > /vagrant/logstash.log 2>&1 &