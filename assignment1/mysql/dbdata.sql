create database testdb;

create table testdb.testtable (id int not null auto_increment,
                             fname varchar(100) not null,
                             lname varchar(100) not null,
                             constraint pk primary key(id));

insert into testdb.testtable (fname, lname) values ('Sam', 'Smith');
insert into testdb.testtable (fname, lname) values ('James', 'Jones');
insert into testdb.testtable (fname, lname) values ('Carol', 'Cooper');
insert into testdb.testtable (fname, lname) values ('Suzie', 'South');
