#Install mysql client package
sudo apt install mysql-client

#Check to see if installed
mysql -V

#Remove existing temp_dir
rm -rf temp_dir

#Create a temporary directory and go inside it (ideal for testing environment)
mkdir temp_dir && cd temp_dir

#Clone down the REST API
git clone https://github.com/Team-CodeVid/spring-petclinic-rest.git

#Find and move the schema files

cp spring-petclinic-rest/src/main/resources/db/mysql/initDB.sql .
cp spring-petclinic-rest/src/main/resources/db/mysql/populateDB.sql .

#Run our files on the mysql-client, create and populate the petclinic database
mysql --host=$RDS_ENDPOINT --port=3306 --user=$RDS_USERNAME --password=$RDS_PASSWORD < initDB.sql

mysql --host=$RDS_ENDPOINT --port=3306 --user=$RDS_USERNAME --password=$RDS_PASSWORD petclinic < populateDB.sql

#Clean up (ideal for testing environment)
cd .. && sudo rm -r temp_dir






