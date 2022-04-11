This is fully automated. It will fetch all the config files from the github repo and copy them into VMs to set them up properly.


But you need to change the ipaddress in hosts file because the ip-address will change.

You also need to run ansible-playbook play.yml by hand.