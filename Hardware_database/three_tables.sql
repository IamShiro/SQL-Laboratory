create table motherboards(

id_motherboard int primary key not null auto_increment,
`name_motherboard` varchar(50) not null unique,
model_motherboard varchar(20) not null unique,
brand_motherboard varchar(20) not null,
board_form_factor varchar(20) not null,
socket_type varchar(20) default null,
chipset varchar(20) default null,
memory_slot_type varchar(4) default null


)default charset utf8;

create table graphics_cards(

id_graphics_card int primary key auto_increment,
name_graphics_card varchar(50) not null unique,
model_graphics_card varchar(50) not null unique,
brand_graphics_card varchar(20) not null,
max_power_supply varchar(4) default null,
memory_speed varchar(5) default null,
clock varchar(10) default null,
socket_graphics_card varchar(20) default null

) default charset utf8;

create table power_supplies(

id_power_supply int primary key not null auto_increment,
name_power_supply varchar(50) not null unique,
model_power_supply varchar(50) not null unique,
brand_power_supply varchar(20) not null,
conectors text default null,
min_voltage tinyint default null,
max_voltage tinyint default null

) default charset utf8;
