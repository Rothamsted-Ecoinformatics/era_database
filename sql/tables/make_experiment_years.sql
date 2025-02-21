CREATE TABLE lte_data.experiment_years (
	id serial NOT NULL, 
	experiment_id int not null,
	experiment_year smallint not null,
	experiment_year_code text NOT NULL,
	objective text,
	background text,
	experiment_design text,
	plot_width numeric,
	plot_length numeric,
	constraint experiment_years_pk primary key (id),
	constraint experiment_years_experiment_id foreign key (experiment_id) references experiments(id)
);

comment on table lte_data.experiment_years is 'experiment_years collects information specific for an experiment in a year. It is also used to link aggregated logs derived from historic records';
