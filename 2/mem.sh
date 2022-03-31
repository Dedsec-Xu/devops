sysctl -w vm.max_map_count=262144 
echo "vm.max_map_count=262144" >> /etc/sysctl.conf
sysctl -w fs.file-max=131072
echo "fs.file-max=131072" >> /etc/sysctl.conf
