create database booKapp;
use bookapp;

create table user(id int primary key auto_increment,name varchar(20)not null,email varchar(20)not null,password varchar(20)not null);
insert into user values(1001,"muthu","muthu@gmail.com","pass321");
update user set password="pass123" where username="muthu@gmail.com";