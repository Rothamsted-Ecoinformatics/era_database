drop table lte_data.experiment_year_contributors; 

create table lte_data.experiment_year_contributors (
	id serial not null,
	experiment_year_id int not null, 
	contributor_id int2 not null,
	contributor_role_id int2 null,
	constraint experiment_year_contributors_pk primary key (id),
	constraint experiment_year_contributors_datasets_fk foreign key (experiment_year_id) references lte_data.experiment_years(id),
	constraint experiment_year_contributors_contributors_fk foreign key (contributor_id) references lte_data.contributors(id),
	constraint experiment_year_contributors_contributor_roles_fk foreign key (contributor_role_id) references lte_data.contributor_roles(id)
);

comment on table lte_data.experiment_year_contributors is 'experiment_year_contributors links an experiment to the people who have contributed to its development and running.';