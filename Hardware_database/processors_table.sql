create table processors(

id int primary key auto_increment,
`name` varchar(50) not null unique,
model varchar(50) not null unique,
mark varchar(10) default null,
number_core tinyint default null,
ghz decimal(3,2) default null,
`socket` varchar(10) default null,
`cache` tinyint default null


) default charset utf8;
