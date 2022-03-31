E:
cd E:\VirtualBox\vagrant\
mkdir hw1-5
cd hw1-5

@REM powershell curl -o "xenial-server-cloudimg-amd64-vagrant-2.box" "https://app.vagrantup.com/ubuntu/boxes/xenial64/versions/20211001.0.0/providers/virtualbox.box"

vagrant box add E:\VirtualBox\.vagrant.d\xenial-server-cloudimg-amd64-vagrant-2.box --name assignment1
mkdir vagrant
cd vagrant

vagrant init assignment1

powershell curl -o "Vagrantfile" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/Vagrantfile"
powershell curl -o "jenkins.sh" "https://raw.githubusercontent.com/Dedsec-Xu/devops/main/jenkins.sh"
vagrant up




