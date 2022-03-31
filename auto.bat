E:
cd E:\VirtualBox\vagrant\
mkdir hw1-13
cd hw1-13

mkdir vagrant
cd vagrant

vagrant init assignment1

powershell curl -o "Vagrantfile" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/current/Vagrantfile"
powershell curl -o "mem.sh" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/current/mem.sh"
powershell curl -o "docker-compose.yml" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/current/docker-compose.yml"
vagrant up




