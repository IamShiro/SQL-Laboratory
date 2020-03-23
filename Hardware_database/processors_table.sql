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


insert into processors (`name`,model,mark,number_core,ghz,`socket`,`cache`) values
('Processor Intel Core i3-3240','i3-3240','Intel', 2, 3.40, 'FCLGA1155', 3),
('Processor Intel Core i3-9100F','i3-9100F Coffee Lake','Intel', 4, 3.60, 'FCLGA1151', 6),
('Processor Intel Core i3-10110U','i3-10110U','Intel', 2, 2.10, 'FCBGA1528', 4),
('Processor Intel Core i3-10110Y','i3-10110Y','Intel', 2, 1.00, 'UTFCBGA1377', 4),
('Processor Intel Core i3-1005G1','i3-1005G1','Intel', 2, 1.20, 'FCBGA1526', 4),
('Processor Intel Core i3-9300T','i3-9300T','Intel', 4, 3.20, 'FCLGA1151', 8),
('Processor Intel Core i3-9300','i3-9300','Intel', 4, 3.70, 'FCLGA1151', 8),
('Processor Intel Core i3-9100','i3-9100','Intel', 4, 3.60, 'FCLGA1151', 6),
('Processor Intel Core i3-9100T','i3-9100T','Intel', 4, 3.10,'FCLGA1151',6);
