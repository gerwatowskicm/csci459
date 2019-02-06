!/bin/bash
cd mysql
docker build -t mysql-app .



cd ..
docker run --rm --name database -d mysql-app
sleep 15

docker exec -i database mysql -uroot -pcsci459 < mysql/user.sql
docker exec -i database mysql -ucsci459 -pcsci459 < mysql/dbdata.sql
docker exec -i database mysql -ucsci459 -pcsci459 -e "select * from testdb.testtable;"

cd webserver
docker build -t webserver .
cd ..
docker run --rm --name web-php --link database:mysql -p 8080:80 -d webserver


