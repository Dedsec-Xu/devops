E:
cd E:\VirtualBox\vagrant\
mkdir hw1-demo
cd hw1-demo

mkdir vagrant
cd vagrant

vagrant init

powershell curl -o "Vagrantfile" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/current/Vagrantfile"
powershell curl -o "mem.sh" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/current/mem.sh"
powershell curl -o "docker-compose.yml" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/current/docker-compose.yml"
powershell curl -o "sonar-setup.sh" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/current/sonar-setup.sh"
vagrant up




