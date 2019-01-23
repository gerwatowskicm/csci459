!/bin/bash
cd mysql
docker build -t mysql-app .
cd ../apache
docker build -t httpd-app .
cd ..
docker run --rm --name httpd-mysql -d mysql-app
sleep 15
docker run --rm --name httpd --link httpd-mysql:mysql -p 8080:80 -d httpd-app
docker exec -i httpd-mysql mysql -uroot -pcsci459 < mysql/user.sql
docker exec -i httpd-mysql mysql -ucsci459 -pcsci459 < mysql/dbdata.sql
docker exec -i httpd-mysql mysql -ucsci459 -pcsci459 -e "select * from testdb.testtable;"
docker exec -i httpd-mysql mysql -ucsci459 -pcsci459 -e "select * from testdb.testtable;" > ./logfile.txt
docker stop httpd
docker run --rm --name httpd --link httpd-mysql:mysql -p 8080:80 -d -v /Users/clairegerwatowski/csci459/assignment1/apache/:/usr/local/apache2/htdocs/ httpd-app
