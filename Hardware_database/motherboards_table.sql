create table motherboards(

id_motherboard int primary key auto_increment,
name_motherboard varchar(50) not null unique,
model_motherboard varchar(30) not null unique,
brand_motherboard varchar(20) default null,
chipset varchar(50) default null,
board_form_factor varchar(15) default null,
socket_type varchar(20) default null,
socket_ram_memory varchar(10) default null

) default charset utf8;

insert into motherboards 
(name_motherboard,model_motherboard,brand_motherboard,chipset,board_form_factor,socket_type,socket_ram_memory) values
('Motherboard ASRock A320M-HD','A320M-HD','ASRock','AMD Promontory A320','Micro ATX','AM4 Série-A','DDR4'),
('Motherboard Gigabyte H310M H 2.0','H310M H 2.0','Gigabyte','Intel Express Chipset H310','Micro ATX','LGA1151','DDR4'),
('Motherboard Asus TUF H310M-Plus Gaming','TUF H310M-PLUS GAMING','ASUS','Intel H310','mATX','LGA1151','DDR4'),
('Motherboard Asus Prime A320M-K','A320M-K','ASUS','AMD A320','Micro ATX','AM4 Socket','DDR4'),
('Motherboard Gigabyte Aorus B450 Aorus M','B450 AORUS M','Gigabyte','AMD B450','Micro ATX','AM4 Socket','DDR4')
