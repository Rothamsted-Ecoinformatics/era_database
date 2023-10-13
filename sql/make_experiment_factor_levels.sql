create table lte_data.experiment_factor_levels (
	id smallserial not null,
	experiment_factor_id int2 not null,
	factor_level_annotation_id int2 null, -- not everything will have an annotation but can be used to provide extra granularity
	factor_level_code text not null,
	factor_level_label text not null,
	description text null,
	constraint experiment_factor_levels_pk primary key(id),
	constraint experiment_factor_levels_experiment_factor_id_fk foreign key (experiment_factor_id) references experiment_factors(id),
	constraint experiment_factor_levels_factor_level_annotation_id_fk foreign key (factor_level_annotation_id) references factor_level_annotations(id)
);

comment on table lte_data.experiment_factor_levels is 'This table is used to describe factor levels for an experiment. 
Because the precise application of a factor level can change the details of a factor level are given in the plot_year_factor_levels table. 
This tabe is therefore used to group related factor levels over time.';

comment on column lte_data.experiment_factor_levels.experiment_factor_id is 'This is an FK to the experiment factor the experiment factor level belongs to';
comment on column lte_data.experiment_factor_levels.factor_level_annotation_id is 'This is an optional FK to an ontology annotation for the factor level';
comment on column lte_data.experiment_factor_levels.factor_level_code IS 'This is a shorthand code for the experiment factor level';
comment on column lte_data.experiment_factor_levels.factor_level_label is 'This is a decriptive label for the experiment factor level and should use full English words.';
comment on column lte_data.experiment_factor_levels.description is 'This is a description of the experiment factor level';