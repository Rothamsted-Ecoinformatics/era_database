create table lte_data.variables (
	id serial not null,
	measured_property_term_id int2 not null,
	measured_entity_term_id int2 not null,
	measured_entity_part_term_id int2 not null,
    data_type_id int2 not null,
    measurement_unit_term_id int2 null,
    variable_label text not null,
    title text not null,
	format_mask text null,
    transformation text null,
    validation_rule text null,
    constraint variable_pk primary key(id),
    constraint unq_variables_variable_label unique (variable_label),
    constraint variables_measured_property_term_id_fk foreign key (measured_property_term_id) references measured_property_terms(id),
    constraint variables_measured_entity_term_id_fk foreign key (measured_entity_term_id) references measured_entity_terms(id),
    constraint variables_measured_entity_part_term_id_fk foreign key (measured_entity_part_term_id) references measured_entity_part_terms(id),
    constraint variables_data_type_id_fk foreign key (data_type_id) references data_types(id),
	constraint variables_measurement_unit_term_id_fk foreign key (measurement_unit_term_id) references measurement_unit_terms(id)
);

comment on table lte_data.variables is 'dataset_variables is used to describe variables which are measured.';

comment on column lte_data.variables.measured_property_term_id is 'An FK to identify the measured property for the variable';
comment on column lte_data.variables.measured_entity_term_id is 'An FK to identify the measured entity for the variable';
comment on column lte_data.variables.measured_entity_part_term_id is 'An FK to identify the measured entity part for the variable';
comment on column lte_data.variables.data_type_id is 'An FK to identify the data type for the variable';
comment on column lte_data.variables.measurement_unit_term_id is 'An FK to identify the measurement_unit for the variable';
comment on column lte_data.variables.variable_label is 'A unique label for the variable. The variable label follows a prescribed format structure and should be used for column headings.';
comment on column lte_data.variables.title is 'A human readable friendly formatted title for the table.';
comment on column lte_data.variables.format_mask is 'A format mask rule which can be applied to the variable.';
comment on column lte_data.variables.transformation is 'A transformation formula to demonstrate how the variable is derived.';
comment on column lte_data.variables.validation_rule is 'A validation rule for the data. It could be a value list, numeric range, regular expression, etc.';

