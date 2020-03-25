create table graphics_cards(

id_graphics_card int primary key auto_increment,
name_graphics_card varchar(50) not null unique,
model_graphics_card varchar(50) not null unique,
brand_graphics_card varchar(20) not null,
power_supply_watts int default null,
memory_speed_gbps tinyint default null,
clock_MHz int default null,
socket_graphics_card varchar(20) default null,
recommended_system_power int default null,
recommended_system_memory_gb tinyint default null,
memory_type varchar(7) default null

) default charset utf8;

insert into graphics_cards
(name_graphics_card,model_graphics_card,brand_graphics_card,power_supply_watts,
memory_speed_gbps,clock_MHz,socket_graphics_card,recommended_system_power,recommended_system_memory_gb,memory_type) values
('Graphics Card Galax NVIDIA GeForce GTX 1660','60SRH7DSY91C','Galax',120,8,1800,'PCI Express x16',450,4,'GDDR5'),
('Graphics Card ASUS RADEON RX 580 OC','DUAL-RX580-O8G','Asus',default,8,1380,default,default,default,'GDDR5'),
('Graphics Card Gigabyte AMD Radeon RX 570 Gaming','GV-RX570GAMING-4GD','Gigabyte',default,4,1255,'PCI Express x16',450,default,'GDDR5'),
('Graphics Card MSI NVIDIA GeForce GT 710 1GD3H LP','GT-710-1GD3H-LP','MSI',19,1,1600,'PCI Express x8',300,default,'DDR3');
