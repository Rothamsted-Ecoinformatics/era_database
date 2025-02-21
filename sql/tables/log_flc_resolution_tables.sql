drop table lte_data.factor_level_combination_harvesting_activity_logs;
create table lte_data.factor_level_combination_sowing_activity_logs (
	id serial not null,
	log_id int not null,
	experiment_year_factor_level_combination_id int not null,
	constraint factor_level_combination_sowing_activity_logs_pk primary key (id),
	constraint factor_level_combination_sowing_activity_logs_log_id_fk foreign key (log_id) references sowing_activity_logs(id),
	constraint factor_level_combination_sowing_activity_logs_flc_id foreign key (experiment_year_factor_level_combination_id) 
		references experiment_year_factor_level_combinations(id)
);

create table lte_data.factor_level_combination_harvesting_activity_logs (
	id serial not null,
	log_id int not null,
	experiment_year_factor_level_combination_id int not null,
	constraint factor_level_combination_harvesting_activity_logs_pk primary key (id),
	constraint factor_level_combination_harvesting_activity_logs_log_id_fk foreign key (log_id) references harvesting_activity_logs(id),
	constraint factor_level_combination_harvesting_activity_logs_flc_id foreign key (experiment_year_factor_level_combination_id) 
		references experiment_year_factor_level_combinations(id)
);

create table lte_data.factor_level_combination_irrigation_activity_logs (
	id serial not null,
	log_id int not null,
	experiment_year_factor_level_combination_id int not null,
	constraint factor_level_combination_irrigation_activity_logs_pk primary key (id),
	constraint factor_level_combination_irrigation_activity_logs_log_id_fk foreign key (log_id) references irrigation_activity_logs(id),
	constraint factor_level_combination_irrigation_activity_logs_flc_id foreign key (experiment_year_factor_level_combination_id) 
		references experiment_year_factor_level_combinations(id)
);

create table lte_data.factor_level_combination_pesticide_activity_logs (
	id serial not null,
	log_id int not null,
	experiment_year_factor_level_combination_id int not null,
	constraint factor_level_combination_pesticide_activity_logs_pk primary key (id),
	constraint factor_level_combination_pesticide_activity_logs_log_id_fk foreign key (log_id) references pesticide_activity_logs(id),
	constraint factor_level_combination_pesticide_activity_logs_flc_id foreign key (experiment_year_factor_level_combination_id) 
		references experiment_year_factor_level_combinations(id)
);

create table lte_data.factor_level_combination_cultivation_activity_logs (
	id serial not null,
	log_id int not null,
	experiment_year_factor_level_combination_id int not null,
	constraint factor_level_combination_cultivation_activity_logs_pk primary key (id),
	constraint factor_level_combination_cultivation_activity_logs_log_id_fk foreign key (log_id) references cultivation_activity_logs(id),
	constraint factor_level_combination_cultivation_activity_logs_flc_id foreign key (experiment_year_factor_level_combination_id) 
		references experiment_year_factor_level_combinations(id)
);

create table lte_data.factor_level_combination_fertilizer_activity_logs (
	id serial not null,
	log_id int not null,
	experiment_year_factor_level_combination_id int not null,
	constraint factor_level_combination_fertilizer_activity_logs_pk primary key (id),
	constraint factor_level_combination_fertilizer_activity_logs_log_id_fk foreign key (log_id) references fertilizer_activity_logs(id),
	constraint factor_level_combination_fertilizer_activity_logs_flc_id foreign key (experiment_year_factor_level_combination_id) 
		references experiment_year_factor_level_combinations(id)
);

alter table fertilizer_activity_logs add column to_review int2;
alter table pesticide_activity_logs add column to_review int2;
alter table cultivation_activity_logs add column to_review int2;
alter table harvesting_activity_logs add column to_review int2;

