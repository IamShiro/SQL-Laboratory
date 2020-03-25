create table power_supplies(

id_power_supply int primary key auto_increment,
name_power_supply varchar(50) not null unique,
model_power_supply varchar(50) not null unique,
brand_power_supply varchar(20) not null,
watts int not null,
conectors text default null,
min_voltage int default null,
max_voltage int default null

) default charset utf8;

insert into power_supplies 
(name_power_supply,model_power_supply,brand_power_supply,watts,conectors,min_voltage,max_voltage) values
('Power Supply 400W 100-N1-0400-L0','100-N1-0400-L0','EVGA',400,
'1x Pinos ATX: 24-pin
 1x EPS (CPU) 8pin (4 + 4)
 1x PCIE 8pin (6 + 2), 6 pinos
 4x SATA
 3x Cabo Periférico PIN
 1x Flopp',100,240),
 ('Power Supply EVGA 600W 80 Plus 100-W1-0600-K','100-W1-0600-KO','EVGA',600,
 '1x 24 Pin ATX
  1x EPS (CPU 8pin (4 + 4)
  2x PCIE 8pin (6 + 2)
  6x SATA
  3x Periférico 4-pin
  1x Flopp',100,240);
