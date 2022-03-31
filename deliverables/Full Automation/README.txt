This is my attempt on automating the assignment. I'd say it is 99% automated. You only need to run
vagrant up
and some commented lines by hand.

It will automatically download the vagrant file and scripts from my repo and will create a VM running Jenkins.

These are items that are automated:
1. Vagrant Machine Download and VM creation
2. SonarQube Installation and configuration
3. BlueOcean Installation and configuration
4. Sql Installation and configuration
5. Script auto downloading

There are some aspects that are not automated:
1. You still need to add user in the postgresql by yourself because I did not find a way to automate it.
2. Sonar-runner installation is not automated
3. mem.sh will be run automatically but you need to run sonar-setup mannually. Because you have to finish adding user in the postgresql before running this.