create table lte_data.experiment_year_factor_level_combinations (
	id serial not null,
	experiment_year_id smallint not null,
	flc_label text not null,
	description text null,
	constraint experiment_year_factor_level_combinations_pk primary key(id),
	constraint experiment_year_factor_level_combinations_experiment_year_id_fk foreign key (experiment_year_id) references experiment_years(id)
);

comment on table lte_data.experiment_factors is 'experiment_year_factor_level_combinations is used to group together factors level combinations.';

