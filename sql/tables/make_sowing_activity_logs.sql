create table lte_data.sowing_activity_logs (
	id serial not null,
	plot_year_id int not null,
	activity_log_type_term_id int2 not null,
	crop_id int2 not null,
	start_date date null,
	end_date date null,
	variety text null,
	seed_rate numeric null,
	seed_rate_unit text null,
	drill_rate numeric null,
	drill_rate_unit text null,
	thousand_grain_weight numeric null,
	drill_depth numeric null,
	drill_depth_unit text null,
	equipment_id int2 null,
	tractor_id int2 null,
	log_notes text null,
	seed_dressings text null,
	constraint sowing_activity_logs_pk primary key (id),
	constraint sowing_activity_logs_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint sowing_activity_logs_crop_id_fk foreign key (crop_id) references crops(id),
	constraint sowing_activity_logs_activity_log_type_term_id foreign key (activity_log_type_term_id) references activity_log_type_terms(id),
	constraint sowing_activity_logs_equipment_id foreign key (equipment_id) references equipment_type_terms(id),
	constraint sowing_activity_logs_tractor_id foreign key (tractor_id) references equipment_type_terms(id)
);

comment on table lte_data.sowing_activity_logs is 'sowing_activity_logs records sowing information for a plot year sowing. There will be duplication within a year where different plots are growing the same crop, but this is the simplest way to manage logs with necessary plot year granularity.';
comment on column lte_data.sowing_activity_logs.plot_year_id is 'FK to the plot year the log is for.';
comment on column lte_data.sowing_activity_logs.activity_log_type_term_id is 'FK to an ontology annotation for the sowing process.';
comment on column lte_data.sowing_activity_logs.crop_id is 'FK to the crop type sown.';
comment on column lte_data.sowing_activity_logs.variety is 'The name of the crop variety sown.';
comment on column lte_data.sowing_activity_logs.start_date is 'The date the crop was sown.';
comment on column lte_data.sowing_activity_logs.end_date is 'The date sowing was completed.';
comment on column lte_data.sowing_activity_logs.seed_rate is 'The seed rate';
comment on column lte_data.sowing_activity_logs.seed_rate_unit is 'The seed rate unit.';
comment on column lte_data.sowing_activity_logs.drill_rate is 'The drilling rate unit.';
comment on column lte_data.sowing_activity_logs.drill_rate_unit is 'The drilling rate unit.';
comment on column lte_data.sowing_activity_logs.thousand_grain_weight is 'The seed thousand grain weight.';
comment on column lte_data.sowing_activity_logs.drill_depth is 'The depth to which seed was drilled.';
comment on column lte_data.sowing_activity_logs.drill_depth_unit is 'The drill depth units.';
comment on column lte_data.sowing_activity_logs.equipment_id is 'FK to the type of sowing or drilling equipment used.';
comment on column lte_data.sowing_activity_logs.tractor_id is 'FK to the type of tractor used.';
comment on column lte_data.sowing_activity_logs.log_notes is 'Freetext notes for the log.';
comment on column lte_data.sowing_activity_logs.seed_dressings is 'Freetext for recording a delimited list of seed dressings used. This really needs separating into new tables for interrogating the seed dressings by use and formulation or active ingredients.';
