use bookapp;



create table book(id int primary key auto_increment,bookname varchar(25) not null,authorname varchar(25) not null,price float not null,publish_date timestamp not null default current_timestamp);

insert into book values(1001,"java","mark",125.0);

update bookorders set status="cancel" where user_id=1001; 

select * from book;

select * from book where bookname="java";

select * from book where authorname="mark";

select * from book where price between 100 and 200;