create table lte_data.variables (
	id serial not null,
    entity_type_term_id int2 not null,
    trait_term_id int2 not null,
    trait_entity_term_id int2 not null,
    trait_characteristic_term_id int2 not null,
    participant_term_id int2 null,
    participant_role_term_id int2 null,
	data_type_term_id int2 not null,
    measurement_unit_term_id int2 null,
    variable_label text not null,
    title text not null,
	format_mask text null,
    transformation text null,
    validation_rule text null,
    variable_description text null,
    method_description text null,
    constraint variable_pk primary key(id),
    constraint unq_variables_variable_label unique (variable_label),
    constraint variables_entity_type_term_id_fk foreign key (entity_type_term_id) references lte_data.entity_type_terms(id),
    constraint variables_participant_id_fk foreign key(participant_term_id) references lte_data.participant_terms(id),
    constraint variables_participant_role_id_fk foreign key(participant_role_term_id) references lte_data.participant_role_terms(id),
    constraint variables_trait_term_id_fk foreign key (trait_term_id) references lte_data.trait_terms(id),
    constraint variables_trait_entity_term_id_fk foreign key (trait_entity_term_id) references lte_data.trait_entity_terms(id),
    constraint variables_trait_characteristic_term_id_fk foreign key (trait_characteristic_term_id) references lte_data.trait_characteristic_terms(id),
    constraint variables_data_type_term_id_fk foreign key (data_type_term_id) references lte_data.data_type_terms (id),
	constraint variables_measurement_unit_term_id_fk foreign key (measurement_unit_term_id) references lte_data.measurement_unit_terms(id)
);

comment on table lte_data.variables is 'variables is used to describe variables which are measured.';
comment on column lte_data.variables.entity_type_term_id is 'An FK to identify the type of entity measured';
comment on column lte_data.variables.data_type_term_id is 'An FK to identify the data type for the variable';
comment on column lte_data.variables.measurement_unit_term_id is 'An FK to identify the measurement_unit for the variable';
comment on column lte_data.variables.variable_label is 'A unique label for the variable. The variable label follows a prescribed format structure and should be used for column headings.';
comment on column lte_data.variables.title is 'A human readable friendly formatted title for the table.';
comment on column lte_data.variables.format_mask is 'A format mask rule which can be applied to the variable.';
comment on column lte_data.variables.transformation is 'A transformation formula to demonstrate how the variable is derived.';
comment on column lte_data.variables.validation_rule is 'A validation rule for the data. It could be a value list, numeric range, regular expression, etc.';
