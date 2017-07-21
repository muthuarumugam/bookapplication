use bookapp;

create table bookorders(id int primary key auto_increment,
User_id int,
 foreign key(User_id) references User(id),
book_id int,
 foreign key(book_id) references book(id),
status varchar(20)not null default 'Ordered',qty int not null,
Order_date timestamp not null default current_timestamp);


insert into bookorders(User_id,book_id,qty)values(1001,1002,3); 
insert into bookorders(User_id,book_id,qty)values(1002,1001,2);

select * from bookorders;

select * from bookorders where user_id=1001;

update Bookorders set quantity=6 where book_id=1001;
