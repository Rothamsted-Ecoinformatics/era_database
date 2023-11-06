create table lte_data.dataset_variables (
	id serial not null,
	dataset_id int not null,
	variable_id int2 not null,
	constraint dataset_variable_pk primary key (id),
	constraint dataset_variables_dataset_id_fk foreign key (dataset_id) references datasets(id),
	constraint dataset_variables_variables_id_fk foreign key (variable_id) references variables(id),
	constraint dataset_variable_unq unique (dataset_id, variable_id)
);

comment on table lte_data.dataset_variables is 'dataset_variables is used to link a dataset to the variables made for that dataset. 
A unique constraint on measurement_id and dataset_id is implemented to ensure variables are not duplicated for a dataset.'