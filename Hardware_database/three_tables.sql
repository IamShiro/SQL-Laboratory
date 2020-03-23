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

id_graphics_card int primary key not null auto_increment,
`name_graphics_card` varchar(50) not null unique,
model_graphics_card varchar(50) not null unique,
brand_graphics_card varchar(20) not null


) default charset utf8;

create table power_supplies(

id_power_supply int primary key not null auto_increment,
`name_power_supply` varchar(50) not null unique,
model_power_supply varchar(50) not null unique,
brand_power_supply varchar(20) not null

)
