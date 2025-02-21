create table lte_data.irrigation_activity_logs (
	id serial not null,
	plot_year_id int not null,
	activity_log_type_term_id int2 not null,
	start_date date null,
	end_date date null,
	irrigation_rate numeric null,
	irrigation_unit numeric null,
	equipment_id int2 null,
	log_notes text null,
	experiment_year_id int null,
	to_review int2 null,
	constraint irrigation_activity_logs_pk primary key (id),
	constraint irrigation_activity_logs_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint irrigation_activity_logs_activity_log_type_term_id foreign key (activity_log_type_term_id) references activity_log_type_terms(id),
	constraint irrigation_activity_logs_equipment_id foreign key (equipment_id) references equipment(id)
);
