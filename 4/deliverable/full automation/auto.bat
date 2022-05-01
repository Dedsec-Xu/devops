E:
cd E:\VirtualBox\vagrant\
mkdir hw4-final
cd hw4-final


mkdir ansible
cd ansible
vagrant init

powershell curl -o "1.conf" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/ansible/1.conf"
powershell curl -o "Vagrantfile" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/ansible/Vagrantfile"
powershell curl -o "logstash.log" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/ansible/logstash.log"
powershell curl -o "petclinic.log" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/ansible/petclinic.log"
powershell curl -o "petcliniclog.csv" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/ansible/petcliniclog.csv"
powershell curl -o "provision.sh" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/ansible/provision.sh"

vagrant up



cd ..
mkdir vagrant
cd vagrant

vagrant init

powershell curl -o "Vagrantfile" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/vagrant/Vagrantfile"
powershell curl -o "provision.sh" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/vagrant/provision.sh"
powershell curl -o "docker-compose.yml" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/vagrant/docker-compose.yml"
powershell curl -o "ansible.cfg" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/vagrant/ansible.cfg"
powershell curl -o "hosts" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/vagrant/hosts"
powershell curl -o "petclinic.jar" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/vagrant/petclinic.jar"
powershell curl -o "play.yml" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/4/scripts/vagrant/play.yml"

vagrant up
