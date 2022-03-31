sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.9.5.zip
sudo unzip sonarqube-7.9.5.zip -d /opt
sudo mv /opt/sonarqube-7.9.5 /opt/sonarqube

sudo groupadd sonar
sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonar sonar
sudo chown sonar:sonar /opt/sonarqube -R



cp /opt/sonarqube/conf/sonar.properties ./sonar.properties
echo 'sonar.jdbc.username=sonar' >> ./sonar.properties
echo 'sonar.jdbc.password=sonar' >> ./sonar.properties
echo 'sonar.jdbc.url=jdbc:postgresql://localhost:5432/sonarqube' >> ./sonar.properties

cp ./sonar.properties /opt/sonarqube/conf/sonar.properties

cp /opt/sonarqube/bin/linux-x86-64/sonar.sh ./sonar.sh 
sed -i '50 i RUN_AS_USER=sonar' ./sonar.sh 
cp ./sonar.sh /opt/sonarqube/bin/linux-x86-64/sonar.sh 

# sudo su sonar
# cd /opt/sonarqube/bin/linux-x86-64/
# ./sonar.sh start