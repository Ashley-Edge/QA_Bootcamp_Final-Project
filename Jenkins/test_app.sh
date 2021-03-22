#Get packages
sudo apt update
sudo apt upgrade -y

#Install Java, OpenJDK, Maven
sudo apt install openjdk-8-jre maven default-jre -y

#Run tests
mvn test


