create table lte_data.pesticide_activity_logs (
	id serial not null,
	plot_year_id int not null,
	activity_log_type_term_id int2 not null,
	start_date date null,
	end_date date null,
	experiment_factor_level_id int2 null,
	product_id int2 null,
	product_amount numeric NULL,
	product_amount_unit text NULL,
	water_volume numeric NULL,
	water_volume_unit text NULL,
	orig_product_amount numeric NULL,
	orig_product_amount_unit text NULL,
	orig_water_volume numeric NULL,
	orig_water_volume_unit text NULL,
	equipment_id int2 null,
	application_method_id int null,
	tractor_id int2 null,
	nozzle text NULL,
	nozzle_pressure numeric NULL,
	wind_speed numeric NULL,
	temperature numeric NULL,
	wind_direction text NULL,
	weather text NULL,
	log_notes text null,
	constraint pesticide_activity_logs_pk primary key (id),
	constraint pesticide_activity_logs_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint pesticide_activity_logs_activity_log_type_term_id_fk foreign key (activity_log_type_term_id) references activity_log_type_terms(id),
	constraint pesticide_activity_logs_product_id_fk foreign key (product_id) references products(id),
	constraint pesticide_activity_logs_application_method_id_fk foreign key (application_method_id) references application_method_terms(id),
	constraint pesticide_activity_logs_equipment_id_fk foreign key (equipment_id) references equipment(id),
	constraint pesticide_activity_logs_tractor_id_fk foreign key (tractor_id) references equipment(id)
);

comment on table lte_data.pesticide_activity_logs is 'pesticide_activity_logs records information about pesticide applications for a plot year. 
There will be duplication within a year where different plots are growing the same crop, but this is the simplest way to manage logs with the necessary 
plot year granularity. The level of detail provided by the logs increases over time as the record detail improves. 
The amount and unit columns have equivalent columns prefixed orig_. These columns capture the input amounts using the originally recorded units if different to metric.
The table does not attempt to group products applied as the same tank mix together.';
comment on column lte_data.pesticide_activity_logs.plot_year_id is 'FK to the plot year the log is for.';
comment on column lte_data.pesticide_activity_logs.activity_log_type_term_id is 'FK to an ontology annotation for the pesticide process.';
comment on column lte_data.pesticide_activity_logs.start_date is 'The date the activity started.';
comment on column lte_data.pesticide_activity_logs.end_date is 'The date activity ended if different from the start.';
comment on column lte_data.pesticide_activity_logs.equipment_id is 'FK to the type of application equipment used.';
comment on column lte_data.pesticide_activity_logs.tractor_id is 'FK to the type of tractor used.';
comment on column lte_data.pesticide_activity_logs.log_notes is 'Freetext notes for the log.';
comment on column lte_data.pesticide_activity_logs.product_id is 'FK to the product suppling the pesticide being applied.';
comment on column lte_data.pesticide_activity_logs.product_amount is 'The metric amount of product applied per unit area.';
comment on column lte_data.pesticide_activity_logs.product_amount_unit is 'The metric units for the product amount.';
comment on column lte_data.pesticide_activity_logs.water_volume is 'The volume of water in the tank mix';
comment on column lte_data.pesticide_activity_logs.water_volume_unit is 'The volume of water in the tank mix units';
comment on column lte_data.pesticide_activity_logs.application_method_id is 'FK to the application method.';
