CREATE TABLE lte_data.fields (
	id uuid NOT NULL,
	farm_id char(1) NULL,
	field_name text NOT NULL,
	height_above_sea_level numeric not null,
	height_above_sea_level_unit text not null,
	boundary geometry(GEOMETRYCOLLECTION, 4326) NULL, -- WGS_84
	constraint fields_pk primary key (id),
	constraint fields_farm_id foreign key (farm_id) references farms(id)
);
