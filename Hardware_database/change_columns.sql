describe graphics_cards;

alter table graphics_cards modify column power_supply_watts smallint;
alter table graphics_cards modify column clock_MHz smallint;
alter table graphics_cards modify column recommended_system_power smallint;

describe power_supplies;

alter table power_supplies modify column watts smallint;
alter table power_supplies modify column min_voltage smallint;
alter table power_supplies modify column max_voltage smallint;
