sudo apt-get update
sudo apt-get upgrade
sudo apt-get install wget unzip -y

sudo apt-get install openjdk-11-jdk -y
sudo apt-get install openjdk-11-jre -y

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;

