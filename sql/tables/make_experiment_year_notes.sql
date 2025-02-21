CREATE TABLE lte_data.experiment_year_notes (
	id serial NOT NULL, 
	experiment_year_id int not null,
	note text not null,
	constraint experiment_year_notes_pk primary key (id),
	constraint experiment_year_notes_experiment_year_id foreign key (experiment_year_id) references experiment_years(id)
);