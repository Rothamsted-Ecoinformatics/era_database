create table lte_data.experiment_factors (
	id smallserial not null,
	experiment_id smallint not null,
	factor_annotation_id smallint not null,
	factor_name text not null,
	notes text null,
	constraint experiment_factors_pk primary key(id),
	constraint experiment_factors_experiment_id_fk foreign key (experiment_id) references experiments(id),
	constraint experiment_factors_factor_annotation_id_fk foreign key (factor_annotation_id) references factor_annotations(id)
);

comment on table lte_data.experiment_factors is 'experiment_factors is used to identify the specific factors used for an experiment.';

