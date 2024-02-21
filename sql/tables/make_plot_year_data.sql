create table lte_data.plot_year_data (
	id int not null,
	plot_year_id int not null,
	variable_id int not null,
	dataset_id int not null,
	data_value text null,
	data_value_code text null,
	replicate_no text null,
	time_series date null,
	data_value_geometry geometry(GEOMETRYCOLLECTION, 4326) NULL, -- WGS_84
	observations text null,
	constraint plot_year_data_pk primary key(id),
	constraint plot_year_data_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint plot_year_data_variable_id_fk foreign key (variable_id) references variables(id),
	constraint plot_year_data_dataset_id_fk foreign key (dataset_id) references datasets(id)
);

comment on table lte_data.plot_year_data is 'plot_year_data is used to manage plot year data. The table is essentially a name value pair structure.';

comment on column lte_data.plot_year_data.id is 'PK value. The primary key value is set in the loading database table plot_year_data_ldr.';
comment on column lte_data.plot_year_data.plot_year_id IS 'This is an FK to the plot_year.';
comment on column lte_data.plot_year_data.variable_id IS 'This is an FK to the variable being measured.';
comment on column lte_data.plot_year_data.dataset_id IS 'This is an FK to the dataset the value belongs to.';
comment on column lte_data.plot_year_data.data_value IS 'This is the measured value.';
comment on column lte_data.plot_year_data.data_value_code IS 'This is a systemised code value which should be described in the dataset for explaining problematic variables, i.e. missing, below detection limits, etc.';
comment on column lte_data.plot_year_data.replicate_no IS 'This is a replicate number of the same value is measured multiply for a plot year at the same time.';
comment on column lte_data.plot_year_data.time_series is 'Time series is used for any measurement taken repeatedly throughout the plot year.';
comment on column lte_data.plot_year_data.data_value_geometry IS 'This is any specific geometry associated with the data value, such as a sample point. If this value is blank the value should be assumed to refer to the whole plot geometry.';
comment on column lte_data.plot_year_data.observations IS 'This is for capturing specific observations about the data value.';
