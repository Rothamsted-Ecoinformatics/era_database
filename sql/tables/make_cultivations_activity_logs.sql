create table lte_data.cultivation_activity_logs (
	id serial not null,
	plot_year_id int not null,
	activity_log_type_term_id int2 not null,
	start_date date null,
	end_date date null,
	equipment_id int2 null,
	tractor_id int2 null,
	log_notes text null,
	tillage_depth numeric null,
	tillage_depth_unit text null,
	throw_direction	text null,
	plough_direction text null,	
	constraint cultivation_activity_logs_pk primary key (id),
	constraint cultivation_activity_logs_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint cultivation_activity_logs_activity_log_type_term_id foreign key (activity_log_type_term_id) references activity_log_type_terms(id),
	constraint cultivation_activity_logs_equipment_id foreign key (equipment_id) references equipment(id),
	constraint cultivation_activity_logs_tractor_id foreign key (tractor_id) references equipment(id)
);

comment on table lte_data.cultivation_activity_logs is 'cultivation_activity_logs records cultivation information for a plot year. 
It also includes related operations such as baling. There will be duplication within a year where different plots are growing the same crop, 
but this is the simplest way to manage logs with necessary plot year granularity. The level of detail provided by the logs increases over time as the record detail improves.';
comment on column lte_data.cultivation_activity_logs.plot_year_id is 'FK to the plot year the log is for.';
comment on column lte_data.cultivation_activity_logs.activity_log_type_term_id is 'FK to an ontology annotation for the cultivation process.';
comment on column lte_data.cultivation_activity_logs.start_date is 'The date the activity started.';
comment on column lte_data.cultivation_activity_logs.end_date is 'The date activity ended if different from the start.';
comment on column lte_data.cultivation_activity_logs.equipment_id is 'FK to the type of cultivation or drilling equipment used.';
comment on column lte_data.cultivation_activity_logs.tractor_id is 'FK to the type of tractor used.';
comment on column lte_data.cultivation_activity_logs.log_notes is 'Freetext notes for the log.';
comment on column lte_data.cultivation_activity_logs.tillage_depth is 'The depth of tillage.';
comment on column lte_data.cultivation_activity_logs.tillage_depth_unit is 'The units for tillage depth.';
comment on column lte_data.cultivation_activity_logs.throw_direction is 'The direction soil is thrown during ploughing.';
comment on column lte_data.cultivation_activity_logs.plough_direction is 'The direction of ploughing.';
