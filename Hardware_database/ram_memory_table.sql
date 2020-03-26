create table ram_memory(

id int primary key auto_increment,
name_ram_memory varchar(50) not null,
model_ram_memory varchar(30) not null unique,
brand_ram_memory varchar(20) not null,
mega_hertz smallint not null,
capacity_gb tinyint not null,
socket_ram_memory varchar(4) not null,
CAS_latencia tinyint default null

 )default charset utf8;
 
 insert into ram_memory 
(name_ram_memory,model_ram_memory,brand_ram_memory,mega_hertz,capacity_gb,socket_ram_memory,CAS_latencia) values
('Ram Memory Fury','HX426C16FB3/8','HyperX',2666,8,'DDR4',16),
('Ram Memory Adata XPG Spectrix D41 TUF','AX4U300038G16-SB41','XPG',3000,8,'DDR4',16),
('Ram Memory Corsair Vengeance LPX','CMK8GX4M1A2400C16','Corsair',2400,8,'DDR4',16);
