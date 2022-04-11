E:
cd E:\VirtualBox\vagrant\
mkdir hw22
cd hw22


mkdir ansible
cd ansible
vagrant init

powershell curl -o "Vagrantfile" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/hw2/ansible/Vagrantfile"
powershell curl -o "provision.sh" "https://github.com/Dedsec-Xu/devops/blob/main/hw2/ansible/provision.sh"

vagrant up


cd ..
mkdir vagrant
cd vagrant

vagrant init

powershell curl -o "Vagrantfile" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/hw2/vagrant/Vagrantfile"
powershell curl -o "provision.sh" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/hw2/vagrant/provision.sh"
powershell curl -o "docker-compose.yml" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/hw2/vagrant/docker-compose.yml"
powershell curl -o "ansible.cfg" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/hw2/vagrant/ansible.cfg"
powershell curl -o "hosts" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/hw2/vagrant/hosts"
powershell curl -o "petclinic.jar" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/hw2/vagrant/petclinic.jar"

vagrant up




