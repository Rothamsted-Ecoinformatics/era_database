create table lte_data.factor_level_combination_factor_levels (
	id serial not null,
	experiment_year_factor_level_combination_id int not null,
	factor_level_id int not null,
	constraint factor_level_combination_factor_levels_pk primary key(id),
	constraint flc_fl_experiment_year_factor_level_combination_id_fk foreign key (experiment_year_factor_level_combination_id) references experiment_year_factor_level_combinations(id),
	constraint flc_fl_factor_level_id_fk foreign key (factor_level_id) references experiment_factor_levels(id)
);


