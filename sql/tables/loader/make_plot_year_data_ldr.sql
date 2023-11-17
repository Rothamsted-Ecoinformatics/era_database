create table loading.plot_year_data_ldr (
	id serial not null,
	plot_year_id int not null,
	variable_id int not null,
	dataset_id int not null,
	data_value text null,
	data_value_code text null,
	replicate_no text null,
	data_value_geometry geometry(GEOMETRYCOLLECTION, 4326) NULL, -- WGS_84
	observations text null,
	constraint plot_year_data_pk primary key(id)
);
