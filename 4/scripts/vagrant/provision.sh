sysctl -w vm.max_map_count=262144 
echo "vm.max_map_count=262144" >> /etc/sysctl.conf
sysctl -w fs.file-max=131072
echo "fs.file-max=131072" >> /etc/sysctl.conf
ulimit -n 65536
ulimit -u 4096

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install wget unzip -y

sudo apt-get install openjdk-11-jdk -y
sudo apt-get install openjdk-11-jre -y

sudo apt-get update

sudo apt-get install -y python3-pip
sudo pip install ansible


sudo cp ./ansible.cfg /etc/ansible/ansible.cfg
sudo cp ./hosts /etc/ansible/hosts

sudo apt install net-tools

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config; sudo systemctl restart sshd;


