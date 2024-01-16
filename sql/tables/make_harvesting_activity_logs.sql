create table lte_data.harvesting_activity_logs (
	id serial not null,
	plot_year_id int not null,
	activity_log_type_term_id int2 not null,
	start_date date null,
	end_date date null,
	equipment_id int2 null,
	log_notes text null,
	constraint harvesting_activity_logs_pk primary key (id),
	constraint harvesting_activity_logs_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint harvesting_activity_logs_activity_log_type_term_id foreign key (activity_log_type_term_id) references activity_log_type_terms(id),
	constraint harvesting_activity_logs_equipment_id foreign key (equipment_id) references equipment(id)
);

comment on table lte_data.harvesting_activity_logs is 'harvesting_activity_logs records sowing information for a plot year harvest. There will be duplication within a year where different plots are growing the same crop, but this is the simplest way to manage logs with necessary plot year granularity.';
comment on column lte_data.harvesting_activity_logs.plot_year_id is 'FK to the plot year the log is for.';
comment on column lte_data.harvesting_activity_logs.activity_log_type_term_id is 'FK to an ontology annotation for the harvesting process.';
comment on column lte_data.harvesting_activity_logs.equipment_id is 'FK to the type harvest equipment used.';
comment on column lte_data.harvesting_activity_logs.log_notes is 'Freetext notes for the log.';
